module PrimersHelper
  def get_primer_name(id)
    primer = Primer.find(id)
    primer.manufacturer + " " + primer.size + " " + 
       primer.style
  end
end
