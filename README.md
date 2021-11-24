# GOAL

This is a demo to show-case how to implement a very simple multi-step form (Wizard) with `Javascript`, `Stimulus` and `Bootstrap`'s css.

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## What needs to be done?

### 0. Install stimulus
```sh
rails webpacker:install:stimulus
```

### 1. Create the stimulus controller
```js
// app/javascript/controllers/wizard_controller.js

import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['step']

  goToNext(event) {
    const nextStep = event.target.dataset.nextStep - 1;
    const actualStep = event.target.dataset.nextStep;

    this.stepTargets[nextStep].classList.add("d-none");
    this.stepTargets[actualStep].classList.remove("d-none");
  }

  goToPrevious(event) {
    const previousStep = event.target.dataset.previousStep - 1;
    const actualStep = event.target.dataset.previousStep;

    this.stepTargets[actualStep].classList.add("d-none");
    this.stepTargets[previousStep].classList.remove("d-none");
  }
}
```

### 2. Add the data-controller to a div that wraps your whole form
```erb
<div class="container">

  <h2>Create a new Restaurant</h2>

  <div data-controller="wizard">
    <%= simple_form_for @restaurant do |f| %>
    <% end %>

  </div>
</div>
```

### 3. Add buttons with data actions specifying the flow
```erb
<%= simple_form_for @restaurant do |f| %>
  <div data-wizard-target="step">
    <%= f.input :name %>

    <%= button_tag "Next", type: :button,
      data: {
        action: "click->wizard#goToNext",
        next_step: "1"
      } %>
  </div>

  <div data-wizard-target="step" class="d-none">
    <% "your inputs" %>
    <%= f.input :address %>

    <%= button_tag "Previous", type: :button,
      data: {
        action: "click->wizard#goToPrevious",
        previous_step: "1"
      } %>

    <%= f.submit %>
  </div>

<% end %>
```

### If you want to check it locally
```sh
repo_name="multi-step-form-demo"
gh_repository="git@github.com:andrerferrer/$repo_name.git"
git clone $gh_repository demo
cd demo
bundle install
yarn install
rails db:create db:migrate db:seed
rails s

# now you can go to http://localhost:3000/restaurants/new and see it in action
```

And we're good to go 🤓

Good Luck and Have Fun
