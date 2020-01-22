<template>
    <div>
        <div class="form-group">
            <label for="email">Your Email Address</label>
            <input type="text"
                   id="email"
                   class="form-control"
                   v-model="userData.email">
        </div>
        <div class="form-group">
            <label for="password">Enter Password</label>
            <input type="password"
                   id="password"
                   class="form-control"
                   v-model.lazy="userData.password">
        </div>
        <div class="form-group">
            <label for="satisfaction">Satisfaction (10 for best, 1 for worst)</label>
            <input min="1"
                   max="10"
                   type="number"
                   id="satisfaction"
                   class="form-control"
                   v-model.number="userData.satisfaction">
        </div>
        <div class="form-group">
            <label for="message">Your Message</label>
            <textarea id="message"
                      rows="5"
                      class="form-control"
                      v-model="message"></textarea>
        </div>
        <div class="form-group">
            <label for="sendspecial">
                <input type="checkbox"
                       id="sendspecial"
                       value="sendSpecial"
                       v-model="checkboxOptions"> I Want Today's Special
            </label>
            <br>
            <label for="sendCoupons">
                <input type="checkbox"
                       id="sendcoupons"
                       value="sendCoupons"
                       v-model="checkboxOptions"> Send Me Monthly Coupons
            </label>
        </div>
        <label for="male">
            <input type="radio"
                   id="male"
                   value="Male"
                   v-model="radioBoxOption"> Male
        </label>
        <label for="female">
            <input type="radio"
                   id="female"
                   value="Female"
                   v-model="radioBoxOption"> Female
        </label>
        <label for="priority">Priority</label>
        <select id="priority"
                class="form-control"
                v-model="selectedPriority">
            <option v-for="priority in priorities">{{ priority }}</option>
        </select>
        <button class="btn btn-primary"
                @click.prevent="submitted">Submit!
        </button>

        <div class="card" v-if="isSubmitted">
            <div class="card-body">
                <h4 class="card-title">Form Data</h4>

                <p>Mail: <b>{{ userData.email }}</b></p>
                <p>Password: <b>{{ userData.password }}</b></p>
                <p>Satisfaction: <b>{{ userData.satisfaction }}</b></p>
                <p style="white-space: pre">Message: <b>{{ message }}</b></p>
                <p>Checkbox Options:</p>
                <ul>
                    <li v-for="item in checkboxOptions"><b>{{ item }}</b></li>
                </ul>
                <p>Gender: <b>{{ radioBoxOption }}</b></p>
                <p>Priority: <b>{{ selectedPriority }}</b></p>
            </div>
        </div>

    </div>
</template>
 

<script>
 
    export default {
        data() {
            return {
                userData: {
                    email: '',
                    password: '',
                    satisfaction: 10
                },
                message: 'Describe your review...',
                checkboxOptions: [],
                radioBoxOption: 'Male',
                selectedPriority: 'High',
                priorities: ['High', 'Medium', 'Low'],
                isSubmitted: false
            }
        },

        methods: {
            submitted() {
                this.isSubmitted = true;
            }
        }
    }
</script>