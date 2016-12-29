## Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> Single table ingeritance
- x AuditLog

## Features:
- x Approval Workflow
- x SMS Sending -> link to approval or overtime input -> Integrate with Heroku scheduler
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to managers for approval
- x Needs to be documented if employee did not log overtime
- x Create audit log for each text message
- x Need to update end_date when confirmed
- x Need to update audit log status when overtime rejected
- x Home icon
- x Update buttons on employee homepage so they show on mobile
- x Update buttons to include time span
- x Update button sort order on employee homepage
- x Remove unnecessary nav bar buttons for managers
- x Fix admin dashboard bug
- x Imlement new relic for keeping site alive

## UI:
- x Bootstrap -> formatting
- x Icons from glyphicons
- x Update the styles for forms

## TODOS:
- x Integrate validation for phone attr in User:
	# x No spaces or dashes
	# x all characters have to be number
	# x Exaclty 10 characters

## Refactor TODOS:
- x Add full_name method to users
- x Refactor user association integration test in post_spec
- x Refactor posts/_form for admin user with status
- x Fix post_spec.rb:83 to use factories
- x Fix post_spec.rb:46 to have correct user reference and not require update