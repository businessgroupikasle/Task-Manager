class CreatePayslips < ActiveRecord::Migration[7.1]
  def change
    create_table :payslips do |t|

      t.references :user
      t.references :emp
      t.references :emp_detail 
      t.decimal :incentive_pay
      t.decimal :provident_fund
      t.decimal :profesional_tax


      t.timestamps
    end
  end
end
