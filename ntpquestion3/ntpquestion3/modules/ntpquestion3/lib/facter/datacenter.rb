Facter.add(:datacenter) do
    setcode do
      network=Facter.value(:network)
      case network
      when /ip_range/
        'TT'
      when /Ip_range/
        'PX'
      else
        'unknown'
      end
    end
  end
  