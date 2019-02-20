class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validate  :check_apparel

  def check_apparel
    if !womens_apparel.present? && !mens_apparel.present?
      errors.add(:apparel, "MUST HAVE womens_apparel OR mens_apparel. One or both!")
    end
  end

end

