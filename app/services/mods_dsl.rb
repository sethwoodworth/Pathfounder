module ModsDsl
  def self.included(base)
    base.extend(ClassMethods)
  end

  def mods
    self.class.mods
  end

  module ClassMethods
    def role(role)
      self.role = role
    end

    def mods(trait, modifier)
      mod_hash = {role: self.role, trait: trait, modifier: modifier}
      mods << mod_hash
    end

    def mods
      @mods ||= []
    end

    def assemble
      mod_hash.each {|h| puts h}
    end
  end

end
