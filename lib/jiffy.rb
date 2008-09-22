class Jiffy
  include Singleton 
  
  def initialize ()
    @markers        = {}
    @marks_measures = []
  end
  
  def mark (reference_id)
    cur_time_t           = (Time.now.to_f * 1000).to_i
    @markers[reference_id] = {
      'startTime' => cur_time_t, 
      'lastTime'  => cur_time_t 
    }
  end
  
  def measure (event_name, reference_id)
    return unless @markers.has_key?(reference_id)
    
    cur_time_t = (Time.now.to_f * 1000).to_i
    ref_time_t = @markers[reference_id]['lastTime']
    elp_time_t = cur_time_t - ref_time_t
    @markers[reference_id]['lastTime'] = cur_time_t
    
    @marks_measures.push({
      'name' => reference_id, 
      'evt'  => event_name,
      'et'   => elp_time_t,
      'rt'   => ref_time_t
    })
  end
  
  def get_measures 
    return @marks_measures
  end
  
  def get_markers
    return @markers
  end
  
  def clear 
    @markers        = {}
    @marks_measures = []
  end
end