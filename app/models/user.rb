class User < ActiveRecord::Base
  rolify
  after_create :assign_basic_role
  has_many :dogs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


private
  def assign_basic_role
    self.add_role "basic"
  end
end
