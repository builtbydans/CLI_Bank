require_relative 'bank'    # You need to create this file!
require_relative 'controller' # You need to create this file!
require_relative 'router'

csv_file = File.join(__dir__, 'accounts.csv')
bank = Bank.new(csv_file)
controller = Controller.new(bank)

router = Router.new(controller)

# Start the app
router.run
