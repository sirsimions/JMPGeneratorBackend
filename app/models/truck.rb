class Truck < ApplicationRecord
    def unpaid_allowance_days
        qualifying_days = self.allowance_qualifying_days || 0
        unpaid_days = qualifying_days - self.paidDelayDays
        unpaid_days.positive? ? unpaid_days : 0
      end
end
