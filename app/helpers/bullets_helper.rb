module BulletsHelper
  def get_bullet_name(id)
    bullet = Bullet.find(id)
    bullet.manufacturer + " " + bullet.weight + " " +
       bullet.style + " " + bullet.name
  end
end
