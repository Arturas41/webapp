<template>
    <b-menu>
        <b-menu-list label="Menu">

            <i class="fas fa-camera"></i>

	<b-menu-list>
		<b-menu-item
			tag="router-link"
			to="foo"
			label="test"
		/>
	</b-menu-list>

            <b-menu-item
                icon="settings"
                :active="isActive"
                :expanded="isActive"
                @click="isActive = !isActive">
                <template slot="label" slot-scope="props">
                    Administrator
                    <b-icon
                        class="is-pulled-right fas fa-camera"
                        :icon="props.expanded ? 'menu-down' : 'menu-up'">
                    </b-icon>
                </template>
                <b-menu-item icon="account" label="Users"></b-menu-item>
                <b-menu-item icon="cellphone-link">
                    <template slot="label" slot-scope="props">
                        Devices
                        <b-dropdown aria-role="list" class="is-pulled-right" position="is-bottom-left">
                        <b-icon icon="dots-vertical" slot="trigger"></b-icon>
                            <b-dropdown-item aria-role="listitem">Action</b-dropdown-item>
                            <b-dropdown-item aria-role="listitem">Another action</b-dropdown-item>
                            <b-dropdown-item aria-role="listitem">Something else</b-dropdown-item>
                        </b-dropdown>
                    </template>
                </b-menu-item>
                <b-menu-item icon="cash-multiple" label="Payments" disabled></b-menu-item>
            </b-menu-item>


        


        </b-menu-list>

        <b-menu-list label="Configuration"></b-menu-list>
        
    </b-menu>
</template>

<script>
    export default {
        data() {
            return {
                isActive: true
            }
        }
    }
</script>