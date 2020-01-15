<?php
 
namespace Tests\Feature;
 
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Notifications\DatabaseNotification;
use Tests\TestCase;
 
class NotificationsTest extends TestCase
{
    use DatabaseMigrations;
 
    public function setUp() : void
    {
        parent::setUp();
 
       $this->actingAs(factory('App\User')->create());
       // $this->signIn();
    }
 
    function test_a_notification_is_prepared_when_a_subscribed_thread_receives_a_new_reply_that_is_not_by_the_current_user()
    {
        $thread = factory('App\CForumThread')->create();
        $thread->subscribe();
 
        $this->assertCount(0, auth()->user()->notifications);

        $thread->addReply([
            'body' => 'Some reply here',
            'user_id' => auth()->id()
        ]);
 
        $this->assertCount(0, auth()->user()->fresh()->notifications);
 
        $thread->addReply([
            'user_id' => factory('App\User')->create()->id,
            'body' => 'Some reply here'
        ]);
 
        $this->assertCount(1, auth()->user()->fresh()->notifications);
    }
 
    function test_a_user_can_fetch_their_unread_notifications()
    {

       factory(DatabaseNotification::class)->create();
 
        $this->assertCount(
            1,
            $this->getJson("/c_forum/user_profiles/" . auth()->user()->id . "/notifications")->json()
        );
    }
 
    function test_a_user_can_mark_a_notification_as_read()
    {
        factory(DatabaseNotification::class)->create();
 
        tap(auth()->user(), function ($user) {
            $this->assertCount(1, $user->unreadNotifications);
 
            $this->delete("/c_forum/user_profiles/{$user->name}/notifications/" . $user->unreadNotifications->first()->id);
 
            $this->assertCount(0, $user->fresh()->unreadNotifications);
        });
    }
}