module PowdersHelper
  def powder_with_charge(id, charge)
    powder = Powder.find(id)
    charge + " " + powder.name 
  end
end
