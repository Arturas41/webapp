<template>
  <div
    id="demo"
    :class="[{'collapsed' : collapsed}]"
  >
    <div class="demo">

      <div class="">
        <router-view />
      </div>

      <sidebar-menu
        :menu="menu"
        :collapsed="collapsed"
        :theme="selectedTheme"
        :show-one-child="true"
        @toggle-collapse="onToggleCollapse"
        @item-click="onItemClick"
      />
    </div>
  </div>
</template>

<script>
const separator = {
  template: `<hr style="border-color: rgba(0, 0, 0, 0.1); margin: 20px;">`
}

export default {
  data () {

    let login = {}
    if(window.App.signedIn){
        login = {
            title: 'User',
            icon: 'fa fa-user',
            child: [
                {
                    href: '/logout',
                    title: 'Logout'
                }
            ]
        };
    }else{
        login = {
            title: 'User',
            icon: 'fa fa-user',
            child: [
                {
                    href: '/login',
                    title: 'Login in'
                },
                {
                    href: '/register',
                    title: 'Register'
                }
            ]
        };
    }




    return {
      menu: [
        login,

        {
            header: true,
            title: 'Useless content',
            hiddenOnCollapse: true
        },

        {
            title: 'Playground',
            icon: 'fa fa-code',
            child: [
                {
                    href: '/general_playground/javascript_douglas_crockford',
                    title: 'Douglas Crockford JS'
                },
                {
                    href: '/general_playground/laravel_string_helpers',
                    title: 'Laravel String Helpers'
                },
                {
                    href: '/general_playground/laravel_carbon',
                    title: 'Carbon'
                }
            ]
        },

        {
            title: 'Games',
            icon: 'fa fa-gamepad',
            child: [
                {
                    href: '/games',
                    title: 'Games list'
                },
                {
                    href: '/games/create',
                    title: 'Create game'
                },
                {
                    href: '/games/reviews',
                    title: 'Reviews list'
                }
            ]
        },

        {
          href: '/page-one/asdf',
          title: 'Installation',
          icon: 'fa fa-download'
        },
        {
          href: '/page-two',
          title: 'Basic Usage',
          icon: 'fa fa-code'
        },
        {
          header: true,
          title: 'Usage',
          hiddenOnCollapse: true
        },
        {
          href: '/props',
          title: 'Props',
          icon: 'fa fa-cogs'
        },
        {
          href: '/events',
          title: 'Events',
          icon: 'fa fa-bell'
        },
        {
          href: '/styling',
          title: 'Styling',
          icon: 'fa fa-palette'
        },
        {
          component: separator
        },
        {
          header: true,
          title: 'Example',
          hiddenOnCollapse: true
        },
        {
          href: '/disabled',
          title: 'Disabled page',
          icon: 'fa fa-lock',
          disabled: true
        },
        {
          title: 'Badge',
          icon: 'fa fa-cog',
          badge: {
            text: 'new',
            class: 'vsm--badge_default'
          }
        },
        {
          href: '/page',
          title: 'Dropdown Page',
          icon: 'fa fa-list-ul',
          child: [
            {
              href: '/page/sub-page-1',
              title: 'Sub Page 01',
              icon: 'fa fa-file-alt'
            },
            {
              href: '/page/sub-page-2',
              title: 'Sub Page 02',
              icon: 'fa fa-file-alt'
            }
          ]
        },
        {
          title: 'Multiple Level',
          icon: 'fa fa-list-alt',
          child: [
            {
              title: 'page'
            },
            {
              title: 'Level 2 ',
              child: [
                {
                  title: 'page'
                },
                {
                  title: 'Page'
                }
              ]
            },
            {
              title: 'Page'
            },
            {
              title: 'Another Level 2',
              child: [
                {
                  title: 'Level 3',
                  child: [
                    {
                      title: 'Page'
                    },
                    {
                      title: 'Page'
                    }
                  ]
                }
              ]
            }
          ]
        }
      ],
      collapsed: true,
      themes: [
        {
          name: 'Default theme',
          input: ''
        },
        {
          name: 'White theme',
          input: 'white-theme'
        }
      ],
      selectedTheme: ''
    }
  },
  methods: {
    onToggleCollapse (collapsed) {
      this.collapsed = collapsed
    },
    onItemClick (event, item) {
      // console.log(event)
      // console.log(item)
    }
  }
}
</script>

<style lang="scss">
@import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600');

body,
html {
  margin: 0;
  padding: 0;
}

body {
  font-family: 'Source Sans Pro', sans-serif;
  font-size: 18px;
  background-color: #f2f4f7;
  color: #262626;
}

#demo {
  padding-left: 350px;
}
#demo.collapsed {
  padding-left: 50px;
}

.demo {
  padding: 50px;
}

.container {
  max-width: 900px;
}

pre {
  font-family: Consolas, monospace;
  color: #000;
  background: #fff;
  border-radius: 2px;
  padding: 15px;
  line-height: 1.5;
  overflow: auto;
}
</style>
