
    

  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>src/writemidi.m at master from kts's matlab-midi - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />

    <link href="https://assets1.github.com/stylesheets/bundle_common.css?bcc3b3077c0d5984298fabdd136ee99050a07983" media="screen" rel="stylesheet" type="text/css" />
<link href="https://assets1.github.com/stylesheets/bundle_github.css?bcc3b3077c0d5984298fabdd136ee99050a07983" media="screen" rel="stylesheet" type="text/css" />

    <script type="text/javascript" charset="utf-8">
      var GitHub = {}
      var github_user = 'EmpyrealBoy'
      
    </script>
    <script src="https://assets3.github.com/javascripts/jquery/jquery-1.4.2.min.js?bcc3b3077c0d5984298fabdd136ee99050a07983" type="text/javascript"></script>
    <script src="https://assets3.github.com/javascripts/bundle_common.js?bcc3b3077c0d5984298fabdd136ee99050a07983" type="text/javascript"></script>
<script src="https://assets0.github.com/javascripts/bundle_github.js?bcc3b3077c0d5984298fabdd136ee99050a07983" type="text/javascript"></script>


        <script type="text/javascript" charset="utf-8">
      GitHub.spy({
        repo: "kts/matlab-midi"
      })
    </script>

    
  
    
  

  <link href="https://github.com/kts/matlab-midi/commits/master.atom" rel="alternate" title="Recent Commits to matlab-midi:master" type="application/atom+xml" />

        <meta name="description" content="Matlab scripts to read and write MIDI files" />
    <script type="text/javascript">
      GitHub.nameWithOwner = GitHub.nameWithOwner || "kts/matlab-midi";
      GitHub.currentRef = 'master';
      GitHub.commitSHA = "278c06434bdc5274075d27ae7763b167781cbb26";
      GitHub.currentPath = "src/writemidi.m";
      GitHub.masterBranch = "master";

      
    </script>
  

            <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3769691-2']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();
    </script>

  </head>

  

  <body class="logged_in ">
    

    
      <script type="text/javascript">
        var _kmq = _kmq || [];
        function _kms(u){
          var s = document.createElement('script'); var f = document.getElementsByTagName('script')[0]; s.type = 'text/javascript'; s.async = true;
          s.src = u; f.parentNode.insertBefore(s, f);
        }
        _kms('//i.kissmetrics.com/i.js');_kms('//doug1izaerwt3.cloudfront.net/406e8bf3a2b8846ead55afb3cfaf6664523e3a54.1.js');
      </script>
    

    

    

    

    

    <div class="subnavd" id="main">
      <div id="header" class="true">
        
          <a class="logo boring" href="https://github.com/">
            <img src="/images/modules/header/logov3.png?changed" class="default" alt="github" />
            <![if !IE]>
            <img src="/images/modules/header/logov3-hover.png" class="hover" alt="github" />
            <![endif]>
          </a>
        
        
          





  
    <div class="userbox">
      <div class="avatarname">
        <a href="https://github.com/EmpyrealBoy"><img src="https://secure.gravatar.com/avatar/56398035d404699db5e00ecae34fa03b?s=140&d=https%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="20" height="20"  /></a>
        <a href="https://github.com/EmpyrealBoy" class="name">EmpyrealBoy</a>

        
        
      </div>
      <ul class="usernav">
        <li><a href="https://github.com/">Dashboard</a></li>
        <li>
          
          <a href="https://github.com/inbox">Inbox</a>
          <a href="https://github.com/inbox" class="unread_count ">0</a>
        </li>
        <li><a href="https://github.com/account">Account Settings</a></li>
                        <li><a href="/logout">Log Out</a></li>
      </ul>
    </div><!-- /.userbox -->
  


        
        <div class="topsearch">
  
    <form action="/search" id="top_search_form" method="get">
      <a href="/search" class="advanced-search tooltipped downwards" title="Advanced Search">Advanced Search</a>
      <input type="search" class="search my_repos_autocompleter" name="q" results="5" placeholder="Search&hellip;" /> <input type="submit" value="Search" class="button" />
      <input type="hidden" name="type" value="Everything" />
      <input type="hidden" name="repo" value="" />
      <input type="hidden" name="langOverride" value="" />
      <input type="hidden" name="start_value" value="1" />
    </form>
    <ul class="nav">
      <li><a href="/explore">Explore GitHub</a></li>
      <li><a href="https://gist.github.com">Gist</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="http://help.github.com">Help</a></li>
    </ul>
  
</div>

      </div>

      
      
        
    <div class="site">
      <div class="pagehead repohead vis-public   ">

      

      <div class="title-actions-bar">
        <h1>
          <a href="/kts">kts</a> / <strong><a href="https://github.com/kts/matlab-midi">matlab-midi</a></strong>
          
          
        </h1>

        
    <ul class="actions">
      

      
        <li class="for-owner" style="display:none"><a href="https://github.com/kts/matlab-midi/admin" class="minibutton btn-admin "><span><span class="icon"></span>Admin</span></a></li>
        <li>
          <a href="/kts/matlab-midi/toggle_watch" class="minibutton btn-watch " id="watch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '09e4c48f9b47db3ae7e49f70c71b0b8e4df29fe0'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Watch</span></a>
          <a href="/kts/matlab-midi/toggle_watch" class="minibutton btn-watch " id="unwatch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '09e4c48f9b47db3ae7e49f70c71b0b8e4df29fe0'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Unwatch</span></a>
        </li>
        
          
            <li class="for-notforked" style="display:none"><a href="/kts/matlab-midi/fork" class="minibutton btn-fork " id="fork_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '09e4c48f9b47db3ae7e49f70c71b0b8e4df29fe0'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>
            <li class="for-hasfork" style="display:none"><a href="#" class="minibutton btn-fork " id="your_fork_button"><span><span class="icon"></span>Your Fork</span></a></li>
          

          <li id='pull_request_item' class='nspr' style='display:none'><a href="/kts/matlab-midi/pull/new/master" class="minibutton btn-pull-request "><span><span class="icon"></span>Pull Request</span></a></li>
        
      
      
      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers"><a href="/kts/matlab-midi/watchers" title="Watchers" class="tooltipped downwards">1</a></li>
          <li class="forks"><a href="/kts/matlab-midi/network" title="Forks" class="tooltipped downwards">1</a></li>
        </ul>
      </li>
    </ul>

      </div>

        
  <ul class="tabs">
    <li><a href="https://github.com/kts/matlab-midi" class="selected" highlight="repo_source">Source</a></li>
    <li><a href="https://github.com/kts/matlab-midi/commits/master" highlight="repo_commits">Commits</a></li>
    <li><a href="/kts/matlab-midi/network" highlight="repo_network">Network</a></li>
    <li><a href="/kts/matlab-midi/pulls" highlight="repo_pulls">Pull Requests (0)</a></li>

    

    
      
      <li><a href="/kts/matlab-midi/issues" highlight="issues">Issues (0)</a></li>
    

            
    <li><a href="/kts/matlab-midi/graphs" highlight="repo_graphs">Graphs</a></li>

    <li class="contextswitch nochoices">
      <span class="toggle leftwards" >
        <em>Branch:</em>
        <code>master</code>
      </span>
    </li>
  </ul>

  <div style="display:none" id="pl-description"><p><em class="placeholder">click here to add a description</em></p></div>
  <div style="display:none" id="pl-homepage"><p><em class="placeholder">click here to add a homepage</em></p></div>

  <div class="subnav-bar">
  
  <ul>
    <li>
      <a href="#" class="dropdown">Switch Branches (1)</a>
      <ul>
        
          
            <li><strong>master &#x2713;</strong></li>
            
      </ul>
    </li>
    <li>
      <a href="#" class="dropdown defunct">Switch Tags (0)</a>
      
    </li>
    <li>
    
    <a href="/kts/matlab-midi/branches" class="manage">Branch List</a>
    
    </li>
  </ul>
</div>

  
  
  
  
  
  



        
    <div id="repo_details" class="metabox clearfix">
      <div id="repo_details_loader" class="metabox-loader" style="display:none">Sending Request&hellip;</div>

        <a href="/kts/matlab-midi/downloads" class="download-source" id="download_button" title="Download source, tagged packages and binaries."><span class="icon"></span>Downloads</a>

      <div id="repository_desc_wrapper">
      <div id="repository_description" rel="repository_description_edit">
        
          <p>Matlab scripts to read and write MIDI files
            <span id="read_more" style="display:none">&mdash; <a href="#readme">Read more</a></span>
          </p>
        
      </div>

      <div id="repository_description_edit" style="display:none;" class="inline-edit">
        <form action="/kts/matlab-midi/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="09e4c48f9b47db3ae7e49f70c71b0b8e4df29fe0" /></div>
          <input type="hidden" name="field" value="repository_description">
          <input type="text" class="textfield" name="value" value="Matlab scripts to read and write MIDI files">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      
      <div class="repository-homepage" id="repository_homepage" rel="repository_homepage_edit">
        <p><a href="http://kenschutte.com/midi" rel="nofollow">http://kenschutte.com/midi</a></p>
      </div>

      <div id="repository_homepage_edit" style="display:none;" class="inline-edit">
        <form action="/kts/matlab-midi/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="09e4c48f9b47db3ae7e49f70c71b0b8e4df29fe0" /></div>
          <input type="hidden" name="field" value="repository_homepage">
          <input type="text" class="textfield" name="value" value="http://kenschutte.com/midi">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>
      </div>
      <div class="rule "></div>
            <div id="url_box" class="url-box">
        <ul class="clone-urls">
          
            
            <li id="http_clone_url"><a href="https://github.com/kts/matlab-midi.git" data-permissions="Read-Only">HTTP</a></li>
            <li id="public_clone_url"><a href="git://github.com/kts/matlab-midi.git" data-permissions="Read-Only">Git Read-Only</a></li>
          
          
        </ul>
        <input type="text" spellcheck="false" id="url_field" class="url-field" />
              <span style="display:none" id="url_box_clippy"></span>
      <span id="clippy_tooltip_url_box_clippy" class="clippy-tooltip tooltipped" title="copy to clipboard">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="14"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://assets3.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=url_box_clippy&amp;copied=&amp;copyto=">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://assets3.github.com/flash/clippy.swf?v5"
             width="14"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=url_box_clippy&amp;copied=&amp;copyto="
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      </span>

        <p id="url_description">This URL has <strong>Read+Write</strong> access</p>
      </div>
    </div>


        

      </div><!-- /.pagehead -->

      









<script type="text/javascript">
  GitHub.currentCommitRef = 'master'
  GitHub.currentRepoOwner = 'kts'
  GitHub.currentRepo = "matlab-midi"
  GitHub.downloadRepo = '/kts/matlab-midi/archives/master'
  GitHub.revType = "master"

  GitHub.controllerName = "blob"
  GitHub.actionName     = "show"
  GitHub.currentAction  = "blob#show"

  
    GitHub.hasWriteAccess = false
    GitHub.hasAdminAccess = false
    GitHub.watchingRepo = false
    GitHub.ignoredRepo = false
    GitHub.hasForkOfRepo = ""
    GitHub.hasForked = false
  

  
</script>








  <div id="commit">
    <div class="group">
        
  <div class="envelope commit">
    <div class="human">
      
        <div class="message"><pre><a href="/kts/matlab-midi/commit/278c06434bdc5274075d27ae7763b167781cbb26">handle files without tempo info; make mismatched note-off a warning</a> </pre></div>
      

      <div class="actor">
        <div class="gravatar">
          
          <img src="https://secure.gravatar.com/avatar/2961eaadaca4fbc8a128dc0682a0c059?s=140&d=https%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="30" height="30"  />
        </div>
        <div class="name">Ken Schutte <span>(author)</span></div>
        <div class="date">
          <abbr class="relatize" title="2010-08-29 15:18:24">Sun Aug 29 15:18:24 -0700 2010</abbr>
        </div>
      </div>

      

    </div>
    <div class="machine">
      <span>c</span>ommit&nbsp;&nbsp;<a href="/kts/matlab-midi/commit/278c06434bdc5274075d27ae7763b167781cbb26" hotkey="c">278c06434bdc5274075d</a><br />
      <span>t</span>ree&nbsp;&nbsp;&nbsp;&nbsp;<a href="/kts/matlab-midi/tree/278c06434bdc5274075d27ae7763b167781cbb26/src/readmidi.m" hotkey="t">4b0f2cd4794fcd0069be</a><br />
      
        <span>p</span>arent&nbsp;
        
        <a href="/kts/matlab-midi/commit/d0b8bfd2af06c885927bf6a25a12159c6a98915f" hotkey="p">d0b8bfd2af06c885927b</a>
      

    </div>
  </div>

    </div>
  </div>



  <div id="slider">

  
    <div class="breadcrumb" data-path="src/writemidi.m/">
      <b><a href="/kts/matlab-midi/tree/278c06434bdc5274075d27ae7763b167781cbb26">matlab-midi</a></b> / <a href="/kts/matlab-midi/tree/278c06434bdc5274075d27ae7763b167781cbb26/src">src</a> / writemidi.m       <span style="display:none" id="clippy_4911">src/writemidi.m</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://assets3.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_4911&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://assets3.github.com/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_4911&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div class="frames">
      <div class="frame frame-center" data-path="src/writemidi.m/">
        <div id="files">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><img alt="Txt" height="16" src="https://assets0.github.com/images/icons/txt.png?bcc3b3077c0d5984298fabdd136ee99050a07983" width="16" /></span>
                <span class="mode" title="File Mode">100644</span>
                
                  <span>144 lines (99 sloc)</span>
                
                <span>2.792 kb</span>
              </div>
              <ul class="actions">
                
                  <li><a class="file-edit-link" href="#" rel="/kts/matlab-midi/file-edit/__ref__/src/writemidi.m">edit</a></li>
                
                <li><a href="/kts/matlab-midi/raw/master/src/writemidi.m" id="raw-url">raw</a></li>
                
                  <li><a href="/kts/matlab-midi/blame/master/src/writemidi.m">blame</a></li>
                
                <li><a href="/kts/matlab-midi/commits/master/src/writemidi.m">history</a></li>
              </ul>
            </div>
            
  <div class="data type-objective-c">
    
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td>
            <pre class="line_numbers"><span id="LID1" rel="#L1">1</span>
<span id="LID2" rel="#L2">2</span>
<span id="LID3" rel="#L3">3</span>
<span id="LID4" rel="#L4">4</span>
<span id="LID5" rel="#L5">5</span>
<span id="LID6" rel="#L6">6</span>
<span id="LID7" rel="#L7">7</span>
<span id="LID8" rel="#L8">8</span>
<span id="LID9" rel="#L9">9</span>
<span id="LID10" rel="#L10">10</span>
<span id="LID11" rel="#L11">11</span>
<span id="LID12" rel="#L12">12</span>
<span id="LID13" rel="#L13">13</span>
<span id="LID14" rel="#L14">14</span>
<span id="LID15" rel="#L15">15</span>
<span id="LID16" rel="#L16">16</span>
<span id="LID17" rel="#L17">17</span>
<span id="LID18" rel="#L18">18</span>
<span id="LID19" rel="#L19">19</span>
<span id="LID20" rel="#L20">20</span>
<span id="LID21" rel="#L21">21</span>
<span id="LID22" rel="#L22">22</span>
<span id="LID23" rel="#L23">23</span>
<span id="LID24" rel="#L24">24</span>
<span id="LID25" rel="#L25">25</span>
<span id="LID26" rel="#L26">26</span>
<span id="LID27" rel="#L27">27</span>
<span id="LID28" rel="#L28">28</span>
<span id="LID29" rel="#L29">29</span>
<span id="LID30" rel="#L30">30</span>
<span id="LID31" rel="#L31">31</span>
<span id="LID32" rel="#L32">32</span>
<span id="LID33" rel="#L33">33</span>
<span id="LID34" rel="#L34">34</span>
<span id="LID35" rel="#L35">35</span>
<span id="LID36" rel="#L36">36</span>
<span id="LID37" rel="#L37">37</span>
<span id="LID38" rel="#L38">38</span>
<span id="LID39" rel="#L39">39</span>
<span id="LID40" rel="#L40">40</span>
<span id="LID41" rel="#L41">41</span>
<span id="LID42" rel="#L42">42</span>
<span id="LID43" rel="#L43">43</span>
<span id="LID44" rel="#L44">44</span>
<span id="LID45" rel="#L45">45</span>
<span id="LID46" rel="#L46">46</span>
<span id="LID47" rel="#L47">47</span>
<span id="LID48" rel="#L48">48</span>
<span id="LID49" rel="#L49">49</span>
<span id="LID50" rel="#L50">50</span>
<span id="LID51" rel="#L51">51</span>
<span id="LID52" rel="#L52">52</span>
<span id="LID53" rel="#L53">53</span>
<span id="LID54" rel="#L54">54</span>
<span id="LID55" rel="#L55">55</span>
<span id="LID56" rel="#L56">56</span>
<span id="LID57" rel="#L57">57</span>
<span id="LID58" rel="#L58">58</span>
<span id="LID59" rel="#L59">59</span>
<span id="LID60" rel="#L60">60</span>
<span id="LID61" rel="#L61">61</span>
<span id="LID62" rel="#L62">62</span>
<span id="LID63" rel="#L63">63</span>
<span id="LID64" rel="#L64">64</span>
<span id="LID65" rel="#L65">65</span>
<span id="LID66" rel="#L66">66</span>
<span id="LID67" rel="#L67">67</span>
<span id="LID68" rel="#L68">68</span>
<span id="LID69" rel="#L69">69</span>
<span id="LID70" rel="#L70">70</span>
<span id="LID71" rel="#L71">71</span>
<span id="LID72" rel="#L72">72</span>
<span id="LID73" rel="#L73">73</span>
<span id="LID74" rel="#L74">74</span>
<span id="LID75" rel="#L75">75</span>
<span id="LID76" rel="#L76">76</span>
<span id="LID77" rel="#L77">77</span>
<span id="LID78" rel="#L78">78</span>
<span id="LID79" rel="#L79">79</span>
<span id="LID80" rel="#L80">80</span>
<span id="LID81" rel="#L81">81</span>
<span id="LID82" rel="#L82">82</span>
<span id="LID83" rel="#L83">83</span>
<span id="LID84" rel="#L84">84</span>
<span id="LID85" rel="#L85">85</span>
<span id="LID86" rel="#L86">86</span>
<span id="LID87" rel="#L87">87</span>
<span id="LID88" rel="#L88">88</span>
<span id="LID89" rel="#L89">89</span>
<span id="LID90" rel="#L90">90</span>
<span id="LID91" rel="#L91">91</span>
<span id="LID92" rel="#L92">92</span>
<span id="LID93" rel="#L93">93</span>
<span id="LID94" rel="#L94">94</span>
<span id="LID95" rel="#L95">95</span>
<span id="LID96" rel="#L96">96</span>
<span id="LID97" rel="#L97">97</span>
<span id="LID98" rel="#L98">98</span>
<span id="LID99" rel="#L99">99</span>
<span id="LID100" rel="#L100">100</span>
<span id="LID101" rel="#L101">101</span>
<span id="LID102" rel="#L102">102</span>
<span id="LID103" rel="#L103">103</span>
<span id="LID104" rel="#L104">104</span>
<span id="LID105" rel="#L105">105</span>
<span id="LID106" rel="#L106">106</span>
<span id="LID107" rel="#L107">107</span>
<span id="LID108" rel="#L108">108</span>
<span id="LID109" rel="#L109">109</span>
<span id="LID110" rel="#L110">110</span>
<span id="LID111" rel="#L111">111</span>
<span id="LID112" rel="#L112">112</span>
<span id="LID113" rel="#L113">113</span>
<span id="LID114" rel="#L114">114</span>
<span id="LID115" rel="#L115">115</span>
<span id="LID116" rel="#L116">116</span>
<span id="LID117" rel="#L117">117</span>
<span id="LID118" rel="#L118">118</span>
<span id="LID119" rel="#L119">119</span>
<span id="LID120" rel="#L120">120</span>
<span id="LID121" rel="#L121">121</span>
<span id="LID122" rel="#L122">122</span>
<span id="LID123" rel="#L123">123</span>
<span id="LID124" rel="#L124">124</span>
<span id="LID125" rel="#L125">125</span>
<span id="LID126" rel="#L126">126</span>
<span id="LID127" rel="#L127">127</span>
<span id="LID128" rel="#L128">128</span>
<span id="LID129" rel="#L129">129</span>
<span id="LID130" rel="#L130">130</span>
<span id="LID131" rel="#L131">131</span>
<span id="LID132" rel="#L132">132</span>
<span id="LID133" rel="#L133">133</span>
<span id="LID134" rel="#L134">134</span>
<span id="LID135" rel="#L135">135</span>
<span id="LID136" rel="#L136">136</span>
<span id="LID137" rel="#L137">137</span>
<span id="LID138" rel="#L138">138</span>
<span id="LID139" rel="#L139">139</span>
<span id="LID140" rel="#L140">140</span>
<span id="LID141" rel="#L141">141</span>
<span id="LID142" rel="#L142">142</span>
<span id="LID143" rel="#L143">143</span>
<span id="LID144" rel="#L144">144</span>
</pre>
          </td>
          <td width="100%">
            
              
                <div class="highlight"><pre><div class='line' id='LC1'><span class="n">function</span> <span class="n">rawbytes</span><span class="o">=</span><span class="n">writemidi</span><span class="p">(</span><span class="n">midi</span><span class="p">,</span><span class="n">filename</span><span class="p">,</span><span class="n">do_run_mode</span><span class="p">)</span></div><div class='line' id='LC2'><span class="o">%</span> <span class="n">rawbytes</span><span class="o">=</span><span class="n">writemidi</span><span class="p">(</span><span class="n">midi</span><span class="p">,</span><span class="n">filename</span><span class="p">,</span><span class="n">do_run_mode</span><span class="p">)</span></div><div class='line' id='LC3'><span class="o">%</span></div><div class='line' id='LC4'><span class="o">%</span> <span class="n">writes</span> <span class="n">to</span> <span class="n">a</span> <span class="n">midi</span> <span class="n">file</span></div><div class='line' id='LC5'><span class="o">%</span></div><div class='line' id='LC6'><span class="o">%</span> <span class="n">midi</span> <span class="n">is</span> <span class="n">a</span> <span class="n">structure</span> <span class="n">like</span> <span class="n">that</span> <span class="n">created</span> <span class="n">by</span> <span class="n">readmidi</span><span class="p">.</span><span class="n">m</span></div><div class='line' id='LC7'><span class="o">%</span></div><div class='line' id='LC8'><span class="o">%</span> <span class="nl">do_run_mode:</span> <span class="n">flag</span> <span class="o">-</span> <span class="n">use</span> <span class="n">running</span> <span class="n">mode</span> <span class="n">when</span> <span class="n">possible</span><span class="p">.</span></div><div class='line' id='LC9'><span class="o">%</span>    <span class="k">if</span> <span class="n">given</span><span class="p">,</span> <span class="n">will</span> <span class="n">override</span> <span class="n">the</span> <span class="n">msg</span><span class="p">.</span><span class="n">used_running_mode</span></div><div class='line' id='LC10'><span class="o">%</span>    <span class="k">default</span><span class="o">==</span><span class="mf">0.</span>  <span class="p">(</span><span class="mi">1</span> <span class="n">may</span> <span class="n">not</span> <span class="n">work</span><span class="p">...)</span></div><div class='line' id='LC11'><span class="o">%</span></div><div class='line' id='LC12'><span class="o">%</span> <span class="nl">TODO:</span> <span class="n">use</span> <span class="n">note</span><span class="o">-</span><span class="n">on</span> <span class="k">for</span> <span class="n">note</span><span class="o">-</span><span class="n">off</span><span class="p">...</span> <span class="p">(</span><span class="k">for</span> <span class="n">other</span> <span class="n">function</span><span class="p">...)</span></div><div class='line' id='LC13'><span class="o">%</span></div><div class='line' id='LC14'><br/></div><div class='line' id='LC15'><span class="o">%</span> <span class="n">Copyright</span> <span class="p">(</span><span class="n">c</span><span class="p">)</span> <span class="mi">2009</span> <span class="n">Ken</span> <span class="n">Schutte</span></div><div class='line' id='LC16'><span class="o">%</span> <span class="n">more</span> <span class="n">info</span> <span class="nl">at:</span> <span class="nl">http:</span><span class="c1">//www.kenschutte.com/midi</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="o">%</span><span class="k">if</span> <span class="p">(</span><span class="n">nargin</span><span class="o">&lt;</span><span class="mi">3</span><span class="p">)</span></div><div class='line' id='LC20'><span class="n">do_run_mode</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC21'><span class="o">%</span><span class="n">end</span></div><div class='line' id='LC22'><br/></div><div class='line' id='LC23'><br/></div><div class='line' id='LC24'><span class="o">%</span> <span class="k">do</span> <span class="n">each</span> <span class="nl">track:</span></div><div class='line' id='LC25'><span class="n">Ntracks</span> <span class="o">=</span> <span class="n">length</span><span class="p">(</span><span class="n">midi</span><span class="p">.</span><span class="n">track</span><span class="p">);</span></div><div class='line' id='LC26'><br/></div><div class='line' id='LC27'><span class="k">for</span> <span class="n">i</span><span class="o">=</span><span class="mi">1</span><span class="o">:</span><span class="n">Ntracks</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'>&nbsp;&nbsp;<span class="n">databytes_track</span><span class="p">{</span><span class="n">i</span><span class="p">}</span> <span class="o">=</span> <span class="p">[];</span></div><div class='line' id='LC30'>&nbsp;&nbsp;</div><div class='line' id='LC31'>&nbsp;&nbsp;<span class="k">for</span> <span class="n">j</span><span class="o">=</span><span class="mi">1</span><span class="o">:</span><span class="n">length</span><span class="p">(</span><span class="n">midi</span><span class="p">.</span><span class="n">track</span><span class="p">(</span><span class="n">i</span><span class="p">).</span><span class="n">messages</span><span class="p">)</span></div><div class='line' id='LC32'><br/></div><div class='line' id='LC33'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">msg</span> <span class="o">=</span> <span class="n">midi</span><span class="p">.</span><span class="n">track</span><span class="p">(</span><span class="n">i</span><span class="p">).</span><span class="n">messages</span><span class="p">(</span><span class="n">j</span><span class="p">);</span></div><div class='line' id='LC34'><br/></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">msg_bytes</span> <span class="o">=</span> <span class="n">encode_var_length</span><span class="p">(</span><span class="n">msg</span><span class="p">.</span><span class="n">deltatime</span><span class="p">);</span></div><div class='line' id='LC36'><br/></div><div class='line' id='LC37'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">msg</span><span class="p">.</span><span class="n">midimeta</span><span class="o">==</span><span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC38'><br/></div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="n">check</span> <span class="k">for</span> <span class="n">doing</span> <span class="n">running</span> <span class="n">mode</span></div><div class='line' id='LC40'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">run_mode</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC41'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">run_mode</span> <span class="o">=</span> <span class="n">msg</span><span class="p">.</span><span class="n">used_running_mode</span><span class="p">;</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="n">should</span> <span class="n">check</span> <span class="n">that</span> <span class="n">prev</span> <span class="n">msg</span> <span class="n">has</span> <span class="n">same</span> <span class="n">type</span> <span class="n">to</span> <span class="n">allow</span> <span class="n">run</span></div><div class='line' id='LC44'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="n">mode</span><span class="p">...</span></div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC46'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span>      <span class="k">if</span> <span class="p">(</span><span class="n">j</span><span class="o">&gt;</span><span class="mi">1</span> <span class="o">&amp;&amp;</span> <span class="n">do_run_mode</span> <span class="o">&amp;&amp;</span> <span class="n">msg</span><span class="p">.</span><span class="n">type</span> <span class="o">==</span> <span class="n">midi</span><span class="p">.</span><span class="n">track</span><span class="p">(</span><span class="n">i</span><span class="p">).</span><span class="n">messages</span><span class="p">(</span><span class="n">j</span><span class="o">-</span><span class="mi">1</span><span class="p">).</span><span class="n">type</span><span class="p">)</span></div><div class='line' id='LC48'><span class="o">%</span>	<span class="n">run_mode</span> <span class="o">=</span> <span class="mi">1</span><span class="p">;</span></div><div class='line' id='LC49'><span class="o">%</span>      <span class="n">end</span></div><div class='line' id='LC50'><br/></div><div class='line' id='LC51'><br/></div><div class='line' id='LC52'><span class="n">msg_bytes</span> <span class="o">=</span> <span class="p">[</span><span class="n">msg_bytes</span><span class="p">;</span> <span class="n">encode_midi_msg</span><span class="p">(</span><span class="n">msg</span><span class="p">,</span> <span class="n">run_mode</span><span class="p">)];</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC54'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">msg_bytes</span> <span class="o">=</span> <span class="p">[</span><span class="n">msg_bytes</span><span class="p">;</span> <span class="n">encode_meta_msg</span><span class="p">(</span><span class="n">msg</span><span class="p">)];</span></div><div class='line' id='LC58'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">end</span></div><div class='line' id='LC60'><br/></div><div class='line' id='LC61'><span class="o">%</span>    <span class="n">disp</span><span class="p">(</span><span class="n">msg_bytes</span><span class="err">&#39;</span><span class="p">)</span></div><div class='line' id='LC62'><br/></div><div class='line' id='LC63'><span class="o">%</span><span class="k">if</span> <span class="p">(</span><span class="n">msg_bytes</span> <span class="o">~=</span> <span class="n">msg</span><span class="p">.</span><span class="n">rawbytes</span><span class="p">)</span></div><div class='line' id='LC64'><span class="o">%</span>  <span class="n">error</span><span class="p">(</span><span class="err">&#39;</span><span class="n">rawbytes</span> <span class="n">mismatch</span><span class="err">&#39;</span><span class="p">);</span></div><div class='line' id='LC65'><span class="o">%</span><span class="n">end</span></div><div class='line' id='LC66'><br/></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">databytes_track</span><span class="p">{</span><span class="n">i</span><span class="p">}</span> <span class="o">=</span> <span class="p">[</span><span class="n">databytes_track</span><span class="p">{</span><span class="n">i</span><span class="p">};</span> <span class="n">msg_bytes</span><span class="p">];</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC69'>&nbsp;&nbsp;<span class="n">end</span></div><div class='line' id='LC70'><span class="n">end</span> </div><div class='line' id='LC71'><br/></div><div class='line' id='LC72'><br/></div><div class='line' id='LC73'><span class="o">%</span> <span class="n">HEADER</span></div><div class='line' id='LC74'><span class="o">%</span> <span class="kt">double</span><span class="p">(</span><span class="err">&#39;</span><span class="n">MThd</span><span class="err">&#39;</span><span class="p">)</span> <span class="o">=</span> <span class="p">[</span><span class="mi">77</span> <span class="mi">84</span> <span class="mi">104</span> <span class="mi">100</span><span class="p">]</span></div><div class='line' id='LC75'><span class="n">rawbytes</span> <span class="o">=</span> <span class="p">[</span><span class="mi">77</span> <span class="mi">84</span> <span class="mi">104</span> <span class="mi">100</span> <span class="p">...</span></div><div class='line' id='LC76'>	    <span class="mi">0</span> <span class="mi">0</span> <span class="mi">0</span> <span class="mi">6</span> <span class="p">...</span></div><div class='line' id='LC77'>	    <span class="n">encode_int</span><span class="p">(</span><span class="n">midi</span><span class="p">.</span><span class="n">format</span><span class="p">,</span><span class="mi">2</span><span class="p">)</span> <span class="p">...</span></div><div class='line' id='LC78'>	    <span class="n">encode_int</span><span class="p">(</span><span class="n">Ntracks</span><span class="p">,</span><span class="mi">2</span><span class="p">)</span> <span class="p">...</span></div><div class='line' id='LC79'>	    <span class="n">encode_int</span><span class="p">(</span><span class="n">midi</span><span class="p">.</span><span class="n">ticks_per_quarter_note</span><span class="p">,</span><span class="mi">2</span><span class="p">)</span> <span class="p">...</span></div><div class='line' id='LC80'>	   <span class="p">]</span><span class="err">&#39;</span><span class="p">;</span></div><div class='line' id='LC81'><br/></div><div class='line' id='LC82'><span class="o">%</span> <span class="n">TRACK_CHUCKS</span></div><div class='line' id='LC83'><span class="k">for</span> <span class="n">i</span><span class="o">=</span><span class="mi">1</span><span class="o">:</span><span class="n">Ntracks</span></div><div class='line' id='LC84'>&nbsp;&nbsp;<span class="n">a</span> <span class="o">=</span> <span class="n">length</span><span class="p">(</span><span class="n">databytes_track</span><span class="p">{</span><span class="n">i</span><span class="p">});</span></div><div class='line' id='LC85'>&nbsp;&nbsp;<span class="o">%</span> <span class="kt">double</span><span class="p">(</span><span class="err">&#39;</span><span class="n">MTrk</span><span class="err">&#39;</span><span class="p">)</span> <span class="o">=</span> <span class="p">[</span><span class="mi">77</span> <span class="mi">84</span> <span class="mi">114</span> <span class="mi">107</span><span class="p">]</span></div><div class='line' id='LC86'>&nbsp;&nbsp;<span class="n">tmp</span> <span class="o">=</span> <span class="p">[</span><span class="mi">77</span> <span class="mi">84</span> <span class="mi">114</span> <span class="mi">107</span> <span class="p">...</span></div><div class='line' id='LC87'>	 <span class="n">encode_int</span><span class="p">(</span><span class="n">length</span><span class="p">(</span><span class="n">databytes_track</span><span class="p">{</span><span class="n">i</span><span class="p">}),</span><span class="mi">4</span><span class="p">)</span> <span class="p">...</span></div><div class='line' id='LC88'>	 <span class="n">databytes_track</span><span class="p">{</span><span class="n">i</span><span class="p">}</span><span class="sc">&#39;]&#39;</span><span class="p">;</span></div><div class='line' id='LC89'>&nbsp;&nbsp;<span class="n">rawbytes</span><span class="p">(</span><span class="n">end</span><span class="o">+</span><span class="mi">1</span><span class="o">:</span><span class="n">end</span><span class="o">+</span><span class="n">length</span><span class="p">(</span><span class="n">tmp</span><span class="p">))</span> <span class="o">=</span> <span class="n">tmp</span><span class="p">;</span></div><div class='line' id='LC90'><span class="n">end</span></div><div class='line' id='LC91'><br/></div><div class='line' id='LC92'><br/></div><div class='line' id='LC93'><span class="o">%</span> <span class="n">write</span> <span class="n">to</span> <span class="n">file</span></div><div class='line' id='LC94'><span class="n">fid</span> <span class="o">=</span> <span class="n">fopen</span><span class="p">(</span><span class="n">filename</span><span class="p">,</span><span class="sc">&#39;w&#39;</span><span class="p">);</span></div><div class='line' id='LC95'><span class="o">%</span><span class="n">fwrite</span><span class="p">(</span><span class="n">fid</span><span class="p">,</span><span class="n">rawbytes</span><span class="p">,</span><span class="err">&#39;</span><span class="kt">char</span><span class="err">&#39;</span><span class="p">);</span></div><div class='line' id='LC96'><span class="n">fwrite</span><span class="p">(</span><span class="n">fid</span><span class="p">,</span><span class="n">rawbytes</span><span class="p">,</span><span class="err">&#39;</span><span class="n">uint8</span><span class="err">&#39;</span><span class="p">);</span></div><div class='line' id='LC97'><span class="n">fclose</span><span class="p">(</span><span class="n">fid</span><span class="p">);</span></div><div class='line' id='LC98'><br/></div><div class='line' id='LC99'><span class="o">%</span> <span class="k">return</span> <span class="n">a</span> <span class="n">_column_</span> <span class="n">vector</span></div><div class='line' id='LC100'><span class="n">function</span> <span class="n">A</span><span class="o">=</span><span class="n">encode_int</span><span class="p">(</span><span class="n">val</span><span class="p">,</span><span class="n">Nbytes</span><span class="p">)</span></div><div class='line' id='LC101'><br/></div><div class='line' id='LC102'><span class="k">for</span> <span class="n">i</span><span class="o">=</span><span class="mi">1</span><span class="o">:</span><span class="n">Nbytes</span></div><div class='line' id='LC103'>&nbsp;&nbsp;<span class="n">A</span><span class="p">(</span><span class="n">i</span><span class="p">)</span> <span class="o">=</span> <span class="n">bitand</span><span class="p">(</span><span class="n">bitshift</span><span class="p">(</span><span class="n">val</span><span class="p">,</span> <span class="o">-</span><span class="mi">8</span><span class="o">*</span><span class="p">(</span><span class="n">Nbytes</span><span class="o">-</span><span class="n">i</span><span class="p">)),</span> <span class="mi">255</span><span class="p">);</span></div><div class='line' id='LC104'><span class="n">end</span></div><div class='line' id='LC105'><br/></div><div class='line' id='LC106'><br/></div><div class='line' id='LC107'><span class="n">function</span> <span class="n">bytes</span><span class="o">=</span><span class="n">encode_var_length</span><span class="p">(</span><span class="n">val</span><span class="p">)</span></div><div class='line' id='LC108'><br/></div><div class='line' id='LC109'><span class="n">binStr</span> <span class="o">=</span> <span class="n">dec2base</span><span class="p">(</span><span class="n">round</span><span class="p">(</span><span class="n">val</span><span class="p">),</span><span class="mi">2</span><span class="p">);</span></div><div class='line' id='LC110'><span class="n">Nbytes</span> <span class="o">=</span> <span class="n">ceil</span><span class="p">(</span><span class="n">length</span><span class="p">(</span><span class="n">binStr</span><span class="p">)</span><span class="o">/</span><span class="mi">7</span><span class="p">);</span></div><div class='line' id='LC111'><br/></div><div class='line' id='LC112'><span class="n">binStr</span> <span class="o">=</span> <span class="p">[</span><span class="err">&#39;</span><span class="mo">00000000</span><span class="err">&#39;</span> <span class="n">binStr</span><span class="p">];</span></div><div class='line' id='LC113'><span class="n">bytes</span> <span class="o">=</span> <span class="p">[];</span></div><div class='line' id='LC114'><span class="k">for</span> <span class="n">i</span><span class="o">=</span><span class="mi">1</span><span class="o">:</span><span class="n">Nbytes</span></div><div class='line' id='LC115'>&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">i</span><span class="o">==</span><span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC116'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">lastbit</span> <span class="o">=</span> <span class="sc">&#39;0&#39;</span><span class="p">;</span></div><div class='line' id='LC117'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">lastbit</span> <span class="o">=</span> <span class="sc">&#39;1&#39;</span><span class="p">;</span></div><div class='line' id='LC119'>&nbsp;&nbsp;<span class="n">end</span></div><div class='line' id='LC120'>&nbsp;&nbsp;<span class="n">B</span> <span class="o">=</span> <span class="n">bin2dec</span><span class="p">([</span><span class="n">lastbit</span> <span class="n">binStr</span><span class="p">(</span><span class="n">end</span><span class="o">-</span><span class="n">i</span><span class="o">*</span><span class="mi">7</span><span class="o">+</span><span class="mi">1</span><span class="o">:</span><span class="n">end</span><span class="o">-</span><span class="p">(</span><span class="n">i</span><span class="o">-</span><span class="mi">1</span><span class="p">)</span><span class="o">*</span><span class="mi">7</span><span class="p">)]);</span></div><div class='line' id='LC121'>&nbsp;&nbsp;<span class="n">bytes</span> <span class="o">=</span> <span class="p">[</span><span class="n">B</span><span class="p">;</span> <span class="n">bytes</span><span class="p">];</span></div><div class='line' id='LC122'><span class="n">end</span></div><div class='line' id='LC123'><br/></div><div class='line' id='LC124'><br/></div><div class='line' id='LC125'><span class="n">function</span> <span class="n">bytes</span><span class="o">=</span><span class="n">encode_midi_msg</span><span class="p">(</span><span class="n">msg</span><span class="p">,</span> <span class="n">run_mode</span><span class="p">)</span></div><div class='line' id='LC126'><br/></div><div class='line' id='LC127'><span class="n">bytes</span> <span class="o">=</span> <span class="p">[];</span></div><div class='line' id='LC128'><br/></div><div class='line' id='LC129'><span class="k">if</span> <span class="p">(</span><span class="n">run_mode</span> <span class="o">~=</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC130'>&nbsp;&nbsp;<span class="n">bytes</span> <span class="o">=</span> <span class="n">msg</span><span class="p">.</span><span class="n">type</span><span class="p">;</span></div><div class='line' id='LC131'>&nbsp;&nbsp;<span class="o">%</span> <span class="nl">channel:</span></div><div class='line' id='LC132'>&nbsp;&nbsp;<span class="n">bytes</span> <span class="o">=</span> <span class="n">bytes</span> <span class="o">+</span> <span class="n">msg</span><span class="p">.</span><span class="n">chan</span><span class="p">;</span>  <span class="o">%</span> <span class="n">lower</span> <span class="n">nibble</span> <span class="n">should</span> <span class="n">be</span> <span class="n">chan</span></div><div class='line' id='LC133'><span class="n">end</span></div><div class='line' id='LC134'><br/></div><div class='line' id='LC135'><span class="n">bytes</span> <span class="o">=</span> <span class="p">[</span><span class="n">bytes</span><span class="p">;</span> <span class="n">msg</span><span class="p">.</span><span class="n">data</span><span class="p">];</span></div><div class='line' id='LC136'><br/></div><div class='line' id='LC137'><span class="n">function</span> <span class="n">bytes</span><span class="o">=</span><span class="n">encode_meta_msg</span><span class="p">(</span><span class="n">msg</span><span class="p">)</span></div><div class='line' id='LC138'><br/></div><div class='line' id='LC139'><span class="n">bytes</span> <span class="o">=</span> <span class="mi">255</span><span class="p">;</span></div><div class='line' id='LC140'><span class="n">bytes</span> <span class="o">=</span> <span class="p">[</span><span class="n">bytes</span><span class="p">;</span> <span class="n">msg</span><span class="p">.</span><span class="n">type</span><span class="p">];</span></div><div class='line' id='LC141'><span class="n">bytes</span> <span class="o">=</span> <span class="p">[</span><span class="n">bytes</span><span class="p">;</span> <span class="n">encode_var_length</span><span class="p">(</span><span class="n">length</span><span class="p">(</span><span class="n">msg</span><span class="p">.</span><span class="n">data</span><span class="p">))];</span></div><div class='line' id='LC142'><span class="n">bytes</span> <span class="o">=</span> <span class="p">[</span><span class="n">bytes</span><span class="p">;</span> <span class="n">msg</span><span class="p">.</span><span class="n">data</span><span class="p">];</span></div><div class='line' id='LC143'><br/></div><div class='line' id='LC144'><br/></div></pre></div>
              
            
          </td>
        </tr>
      </table>
    
  </div>


          </div>
        </div>
      </div>
    </div>
  

  </div>



<div class="frame frame-loading" style="display:none;">
  <img src="/images/modules/ajax/big_spinner_336699.gif">
</div>
    </div>
  
      
    </div>

    <div id="footer" class="clearfix">
      <div class="site">
        <div class="sponsor">
          <a href="http://www.rackspace.com" class="logo">
            <img alt="Dedicated Server" src="https://assets1.github.com/images/modules/footer/rackspace_logo.png?v2?bcc3b3077c0d5984298fabdd136ee99050a07983" />
          </a>
          Powered by the <a href="http://www.rackspace.com ">Dedicated
          Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
          Computing</a> of Rackspace Hosting<span>&reg;</span>
        </div>

        <ul class="links">
          <li class="blog"><a href="https://github.com/blog">Blog</a></li>
          <li><a href="http://support.github.com?sso=_-D9qfwBNALVWtVhGCwVCzX3G3akBoO36XQ8M-kMER3mItaw2V5DpBTBMMTZiae4jkrSf1vZwGxAVJO6ST6a1vl-i5Y1miUNwpSryQ3cRvNLUg37XQBzY87zVwffp1gghTHoS41vID499fnGl65mLu4R6vHZd_lA36CzdESHNO3bcxe6aVi_LO5H4Li3T42WquEag0h26XBtq0TwTlzBX50ss4xLxEkNlqktl4N8_8FNH0CeptJW0b-2Hgi70aOf">Support</a></li>
          <li><a href="https://github.com/training">Training</a></li>
          <li><a href="http://jobs.github.com">Job Board</a></li>
          <li><a href="http://shop.github.com">Shop</a></li>
          <li><a href="https://github.com/contact">Contact</a></li>
          <li><a href="http://develop.github.com">API</a></li>
          <li><a href="http://status.github.com">Status</a></li>
        </ul>
        <ul class="sosueme">
          <li class="main">&copy; 2011 <span id="_rrt" title="0.25342s from fe3.rs.github.com">GitHub</span> Inc. All rights reserved.</li>
          <li><a href="/site/terms">Terms of Service</a></li>
          <li><a href="/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
        </ul>
      </div>
    </div><!-- /#footer -->

    
      
      
        <!-- current locale:  -->
        <div class="locales">
          <div class="site">

            <ul class="choices clearfix limited-locales">
              <li><span class="current">English</span></li>
              
                  <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
              
                  <li><a rel="nofollow" href="?locale=fr">Français</a></li>
              
                  <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
              
                  <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
              
                  <li><a rel="nofollow" href="?locale=ru">Русский</a></li>
              
                  <li><a rel="nofollow" href="?locale=zh">中文</a></li>
              
              <li class="all"><a href="#" class="minibutton btn-forward js-all-locales"><span><span class="icon"></span>See all available languages</span></a></li>
            </ul>

            <div class="all-locales clearfix">
              <h3>Your current locale selection: <strong>English</strong>. Choose another?</h3>
              
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=en">English</a></li>
                  
                      <li><a rel="nofollow" href="?locale=af">Afrikaans</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ca">Català</a></li>
                  
                      <li><a rel="nofollow" href="?locale=cs">Čeština</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
                  
                      <li><a rel="nofollow" href="?locale=es">Español</a></li>
                  
                      <li><a rel="nofollow" href="?locale=fr">Français</a></li>
                  
                      <li><a rel="nofollow" href="?locale=hr">Hrvatski</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=id">Indonesia</a></li>
                  
                      <li><a rel="nofollow" href="?locale=it">Italiano</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
                  
                      <li><a rel="nofollow" href="?locale=nl">Nederlands</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=no">Norsk</a></li>
                  
                      <li><a rel="nofollow" href="?locale=pl">Polski</a></li>
                  
                      <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ru">Русский</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=sr">Српски</a></li>
                  
                      <li><a rel="nofollow" href="?locale=sv">Svenska</a></li>
                  
                      <li><a rel="nofollow" href="?locale=zh">中文</a></li>
                  
                </ul>
              
            </div>

          </div>
          <div class="fade"></div>
        </div>
      
    

    <script>window._auth_token = "09e4c48f9b47db3ae7e49f70c71b0b8e4df29fe0"</script>
    <div id="keyboard_shortcuts_pane" style="display:none">
  <h2>Keyboard Shortcuts</h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus site search</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column middle">
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>t</dt>
        <dd>Open tree</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>p</dt>
        <dd>Open parent</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column last">
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.columns.last -->
  </div><!-- /.columns.equacols -->

  <div class="rule"></div>

  <h3>Issues</h3>

  <div class="columns threecols">
    <div class="column first">
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>x</dt>
        <dd>Toggle select target</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column middle">
      <dl class="keyboard-mappings">
        <dt>I</dt>
        <dd>Mark selected as read</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>U</dt>
        <dd>Mark selected as unread</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>e</dt>
        <dd>Close selected</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Remove selected from view</dd>
      </dl>
    </div><!-- /.column.middle -->
    <div class="column last">
      <dl class="keyboard-mappings">
        <dt>c</dt>
        <dd>Create issue</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>l</dt>
        <dd>Create label</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>i</dt>
        <dd>Back to inbox</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>u</dt>
        <dd>Back to issues</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>/</dt>
        <dd>Focus issues search</dd>
      </dl>
    </div>
  </div>

  <div class="rule"></div>

  <h3>Network Graph</h3>
  <div class="columns equacols">
    <div class="column first">
      <dl class="keyboard-mappings">
        <dt>← <em>or</em> h</dt>
        <dd>Scroll left</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>→ <em>or</em> l</dt>
        <dd>Scroll right</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>↑ <em>or</em> k</dt>
        <dd>Scroll up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>↓ <em>or</em> j</dt>
        <dd>Scroll down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>t</dt>
        <dd>Toggle visibility of head labels</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column last">
      <dl class="keyboard-mappings">
        <dt>shift ← <em>or</em> shift h</dt>
        <dd>Scroll all the way left</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift → <em>or</em> shift l</dt>
        <dd>Scroll all the way right</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift ↑ <em>or</em> shift k</dt>
        <dd>Scroll all the way up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift ↓ <em>or</em> shift j</dt>
        <dd>Scroll all the way down</dd>
      </dl>
    </div><!-- /.column.last -->
  </div>

</div>
    

    <!--[if IE 8]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie8")
    </script>
    <![endif]-->

    <!--[if IE 7]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie7")
    </script>
    <![endif]-->

    <script type="text/javascript">
      _kmq.push(['trackClick', 'entice-signup-button', 'Entice banner clicked']);
      
    </script>
    
  </body>
</html>

