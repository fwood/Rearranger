
    

  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>src/readmidi.m at master from kts's matlab-midi - GitHub</title>
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
      GitHub.currentPath = "src/readmidi.m";
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

  
    <div class="breadcrumb" data-path="src/readmidi.m/">
      <b><a href="/kts/matlab-midi/tree/278c06434bdc5274075d27ae7763b167781cbb26">matlab-midi</a></b> / <a href="/kts/matlab-midi/tree/278c06434bdc5274075d27ae7763b167781cbb26/src">src</a> / readmidi.m       <span style="display:none" id="clippy_3989">src/readmidi.m</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://assets2.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_3989&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://assets2.github.com/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_3989&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div class="frames">
      <div class="frame frame-center" data-path="src/readmidi.m/">
        <div id="files">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><img alt="Txt" height="16" src="https://assets3.github.com/images/icons/txt.png?ac67cac1f98b15ff2b0e1f9b50ff0c39b573d734" width="16" /></span>
                <span class="mode" title="File Mode">100644</span>
                
                  <span>439 lines (316 sloc)</span>
                
                <span>9.402 kb</span>
              </div>
              <ul class="actions">
                
                  <li><a class="file-edit-link" href="#" rel="/kts/matlab-midi/file-edit/__ref__/src/readmidi.m">edit</a></li>
                
                <li><a href="/kts/matlab-midi/raw/278c06434bdc5274075d27ae7763b167781cbb26/src/readmidi.m" id="raw-url">raw</a></li>
                
                  <li><a href="/kts/matlab-midi/blame/278c06434bdc5274075d27ae7763b167781cbb26/src/readmidi.m">blame</a></li>
                
                <li><a href="/kts/matlab-midi/commits/master/src/readmidi.m">history</a></li>
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
<span id="LID145" rel="#L145">145</span>
<span id="LID146" rel="#L146">146</span>
<span id="LID147" rel="#L147">147</span>
<span id="LID148" rel="#L148">148</span>
<span id="LID149" rel="#L149">149</span>
<span id="LID150" rel="#L150">150</span>
<span id="LID151" rel="#L151">151</span>
<span id="LID152" rel="#L152">152</span>
<span id="LID153" rel="#L153">153</span>
<span id="LID154" rel="#L154">154</span>
<span id="LID155" rel="#L155">155</span>
<span id="LID156" rel="#L156">156</span>
<span id="LID157" rel="#L157">157</span>
<span id="LID158" rel="#L158">158</span>
<span id="LID159" rel="#L159">159</span>
<span id="LID160" rel="#L160">160</span>
<span id="LID161" rel="#L161">161</span>
<span id="LID162" rel="#L162">162</span>
<span id="LID163" rel="#L163">163</span>
<span id="LID164" rel="#L164">164</span>
<span id="LID165" rel="#L165">165</span>
<span id="LID166" rel="#L166">166</span>
<span id="LID167" rel="#L167">167</span>
<span id="LID168" rel="#L168">168</span>
<span id="LID169" rel="#L169">169</span>
<span id="LID170" rel="#L170">170</span>
<span id="LID171" rel="#L171">171</span>
<span id="LID172" rel="#L172">172</span>
<span id="LID173" rel="#L173">173</span>
<span id="LID174" rel="#L174">174</span>
<span id="LID175" rel="#L175">175</span>
<span id="LID176" rel="#L176">176</span>
<span id="LID177" rel="#L177">177</span>
<span id="LID178" rel="#L178">178</span>
<span id="LID179" rel="#L179">179</span>
<span id="LID180" rel="#L180">180</span>
<span id="LID181" rel="#L181">181</span>
<span id="LID182" rel="#L182">182</span>
<span id="LID183" rel="#L183">183</span>
<span id="LID184" rel="#L184">184</span>
<span id="LID185" rel="#L185">185</span>
<span id="LID186" rel="#L186">186</span>
<span id="LID187" rel="#L187">187</span>
<span id="LID188" rel="#L188">188</span>
<span id="LID189" rel="#L189">189</span>
<span id="LID190" rel="#L190">190</span>
<span id="LID191" rel="#L191">191</span>
<span id="LID192" rel="#L192">192</span>
<span id="LID193" rel="#L193">193</span>
<span id="LID194" rel="#L194">194</span>
<span id="LID195" rel="#L195">195</span>
<span id="LID196" rel="#L196">196</span>
<span id="LID197" rel="#L197">197</span>
<span id="LID198" rel="#L198">198</span>
<span id="LID199" rel="#L199">199</span>
<span id="LID200" rel="#L200">200</span>
<span id="LID201" rel="#L201">201</span>
<span id="LID202" rel="#L202">202</span>
<span id="LID203" rel="#L203">203</span>
<span id="LID204" rel="#L204">204</span>
<span id="LID205" rel="#L205">205</span>
<span id="LID206" rel="#L206">206</span>
<span id="LID207" rel="#L207">207</span>
<span id="LID208" rel="#L208">208</span>
<span id="LID209" rel="#L209">209</span>
<span id="LID210" rel="#L210">210</span>
<span id="LID211" rel="#L211">211</span>
<span id="LID212" rel="#L212">212</span>
<span id="LID213" rel="#L213">213</span>
<span id="LID214" rel="#L214">214</span>
<span id="LID215" rel="#L215">215</span>
<span id="LID216" rel="#L216">216</span>
<span id="LID217" rel="#L217">217</span>
<span id="LID218" rel="#L218">218</span>
<span id="LID219" rel="#L219">219</span>
<span id="LID220" rel="#L220">220</span>
<span id="LID221" rel="#L221">221</span>
<span id="LID222" rel="#L222">222</span>
<span id="LID223" rel="#L223">223</span>
<span id="LID224" rel="#L224">224</span>
<span id="LID225" rel="#L225">225</span>
<span id="LID226" rel="#L226">226</span>
<span id="LID227" rel="#L227">227</span>
<span id="LID228" rel="#L228">228</span>
<span id="LID229" rel="#L229">229</span>
<span id="LID230" rel="#L230">230</span>
<span id="LID231" rel="#L231">231</span>
<span id="LID232" rel="#L232">232</span>
<span id="LID233" rel="#L233">233</span>
<span id="LID234" rel="#L234">234</span>
<span id="LID235" rel="#L235">235</span>
<span id="LID236" rel="#L236">236</span>
<span id="LID237" rel="#L237">237</span>
<span id="LID238" rel="#L238">238</span>
<span id="LID239" rel="#L239">239</span>
<span id="LID240" rel="#L240">240</span>
<span id="LID241" rel="#L241">241</span>
<span id="LID242" rel="#L242">242</span>
<span id="LID243" rel="#L243">243</span>
<span id="LID244" rel="#L244">244</span>
<span id="LID245" rel="#L245">245</span>
<span id="LID246" rel="#L246">246</span>
<span id="LID247" rel="#L247">247</span>
<span id="LID248" rel="#L248">248</span>
<span id="LID249" rel="#L249">249</span>
<span id="LID250" rel="#L250">250</span>
<span id="LID251" rel="#L251">251</span>
<span id="LID252" rel="#L252">252</span>
<span id="LID253" rel="#L253">253</span>
<span id="LID254" rel="#L254">254</span>
<span id="LID255" rel="#L255">255</span>
<span id="LID256" rel="#L256">256</span>
<span id="LID257" rel="#L257">257</span>
<span id="LID258" rel="#L258">258</span>
<span id="LID259" rel="#L259">259</span>
<span id="LID260" rel="#L260">260</span>
<span id="LID261" rel="#L261">261</span>
<span id="LID262" rel="#L262">262</span>
<span id="LID263" rel="#L263">263</span>
<span id="LID264" rel="#L264">264</span>
<span id="LID265" rel="#L265">265</span>
<span id="LID266" rel="#L266">266</span>
<span id="LID267" rel="#L267">267</span>
<span id="LID268" rel="#L268">268</span>
<span id="LID269" rel="#L269">269</span>
<span id="LID270" rel="#L270">270</span>
<span id="LID271" rel="#L271">271</span>
<span id="LID272" rel="#L272">272</span>
<span id="LID273" rel="#L273">273</span>
<span id="LID274" rel="#L274">274</span>
<span id="LID275" rel="#L275">275</span>
<span id="LID276" rel="#L276">276</span>
<span id="LID277" rel="#L277">277</span>
<span id="LID278" rel="#L278">278</span>
<span id="LID279" rel="#L279">279</span>
<span id="LID280" rel="#L280">280</span>
<span id="LID281" rel="#L281">281</span>
<span id="LID282" rel="#L282">282</span>
<span id="LID283" rel="#L283">283</span>
<span id="LID284" rel="#L284">284</span>
<span id="LID285" rel="#L285">285</span>
<span id="LID286" rel="#L286">286</span>
<span id="LID287" rel="#L287">287</span>
<span id="LID288" rel="#L288">288</span>
<span id="LID289" rel="#L289">289</span>
<span id="LID290" rel="#L290">290</span>
<span id="LID291" rel="#L291">291</span>
<span id="LID292" rel="#L292">292</span>
<span id="LID293" rel="#L293">293</span>
<span id="LID294" rel="#L294">294</span>
<span id="LID295" rel="#L295">295</span>
<span id="LID296" rel="#L296">296</span>
<span id="LID297" rel="#L297">297</span>
<span id="LID298" rel="#L298">298</span>
<span id="LID299" rel="#L299">299</span>
<span id="LID300" rel="#L300">300</span>
<span id="LID301" rel="#L301">301</span>
<span id="LID302" rel="#L302">302</span>
<span id="LID303" rel="#L303">303</span>
<span id="LID304" rel="#L304">304</span>
<span id="LID305" rel="#L305">305</span>
<span id="LID306" rel="#L306">306</span>
<span id="LID307" rel="#L307">307</span>
<span id="LID308" rel="#L308">308</span>
<span id="LID309" rel="#L309">309</span>
<span id="LID310" rel="#L310">310</span>
<span id="LID311" rel="#L311">311</span>
<span id="LID312" rel="#L312">312</span>
<span id="LID313" rel="#L313">313</span>
<span id="LID314" rel="#L314">314</span>
<span id="LID315" rel="#L315">315</span>
<span id="LID316" rel="#L316">316</span>
<span id="LID317" rel="#L317">317</span>
<span id="LID318" rel="#L318">318</span>
<span id="LID319" rel="#L319">319</span>
<span id="LID320" rel="#L320">320</span>
<span id="LID321" rel="#L321">321</span>
<span id="LID322" rel="#L322">322</span>
<span id="LID323" rel="#L323">323</span>
<span id="LID324" rel="#L324">324</span>
<span id="LID325" rel="#L325">325</span>
<span id="LID326" rel="#L326">326</span>
<span id="LID327" rel="#L327">327</span>
<span id="LID328" rel="#L328">328</span>
<span id="LID329" rel="#L329">329</span>
<span id="LID330" rel="#L330">330</span>
<span id="LID331" rel="#L331">331</span>
<span id="LID332" rel="#L332">332</span>
<span id="LID333" rel="#L333">333</span>
<span id="LID334" rel="#L334">334</span>
<span id="LID335" rel="#L335">335</span>
<span id="LID336" rel="#L336">336</span>
<span id="LID337" rel="#L337">337</span>
<span id="LID338" rel="#L338">338</span>
<span id="LID339" rel="#L339">339</span>
<span id="LID340" rel="#L340">340</span>
<span id="LID341" rel="#L341">341</span>
<span id="LID342" rel="#L342">342</span>
<span id="LID343" rel="#L343">343</span>
<span id="LID344" rel="#L344">344</span>
<span id="LID345" rel="#L345">345</span>
<span id="LID346" rel="#L346">346</span>
<span id="LID347" rel="#L347">347</span>
<span id="LID348" rel="#L348">348</span>
<span id="LID349" rel="#L349">349</span>
<span id="LID350" rel="#L350">350</span>
<span id="LID351" rel="#L351">351</span>
<span id="LID352" rel="#L352">352</span>
<span id="LID353" rel="#L353">353</span>
<span id="LID354" rel="#L354">354</span>
<span id="LID355" rel="#L355">355</span>
<span id="LID356" rel="#L356">356</span>
<span id="LID357" rel="#L357">357</span>
<span id="LID358" rel="#L358">358</span>
<span id="LID359" rel="#L359">359</span>
<span id="LID360" rel="#L360">360</span>
<span id="LID361" rel="#L361">361</span>
<span id="LID362" rel="#L362">362</span>
<span id="LID363" rel="#L363">363</span>
<span id="LID364" rel="#L364">364</span>
<span id="LID365" rel="#L365">365</span>
<span id="LID366" rel="#L366">366</span>
<span id="LID367" rel="#L367">367</span>
<span id="LID368" rel="#L368">368</span>
<span id="LID369" rel="#L369">369</span>
<span id="LID370" rel="#L370">370</span>
<span id="LID371" rel="#L371">371</span>
<span id="LID372" rel="#L372">372</span>
<span id="LID373" rel="#L373">373</span>
<span id="LID374" rel="#L374">374</span>
<span id="LID375" rel="#L375">375</span>
<span id="LID376" rel="#L376">376</span>
<span id="LID377" rel="#L377">377</span>
<span id="LID378" rel="#L378">378</span>
<span id="LID379" rel="#L379">379</span>
<span id="LID380" rel="#L380">380</span>
<span id="LID381" rel="#L381">381</span>
<span id="LID382" rel="#L382">382</span>
<span id="LID383" rel="#L383">383</span>
<span id="LID384" rel="#L384">384</span>
<span id="LID385" rel="#L385">385</span>
<span id="LID386" rel="#L386">386</span>
<span id="LID387" rel="#L387">387</span>
<span id="LID388" rel="#L388">388</span>
<span id="LID389" rel="#L389">389</span>
<span id="LID390" rel="#L390">390</span>
<span id="LID391" rel="#L391">391</span>
<span id="LID392" rel="#L392">392</span>
<span id="LID393" rel="#L393">393</span>
<span id="LID394" rel="#L394">394</span>
<span id="LID395" rel="#L395">395</span>
<span id="LID396" rel="#L396">396</span>
<span id="LID397" rel="#L397">397</span>
<span id="LID398" rel="#L398">398</span>
<span id="LID399" rel="#L399">399</span>
<span id="LID400" rel="#L400">400</span>
<span id="LID401" rel="#L401">401</span>
<span id="LID402" rel="#L402">402</span>
<span id="LID403" rel="#L403">403</span>
<span id="LID404" rel="#L404">404</span>
<span id="LID405" rel="#L405">405</span>
<span id="LID406" rel="#L406">406</span>
<span id="LID407" rel="#L407">407</span>
<span id="LID408" rel="#L408">408</span>
<span id="LID409" rel="#L409">409</span>
<span id="LID410" rel="#L410">410</span>
<span id="LID411" rel="#L411">411</span>
<span id="LID412" rel="#L412">412</span>
<span id="LID413" rel="#L413">413</span>
<span id="LID414" rel="#L414">414</span>
<span id="LID415" rel="#L415">415</span>
<span id="LID416" rel="#L416">416</span>
<span id="LID417" rel="#L417">417</span>
<span id="LID418" rel="#L418">418</span>
<span id="LID419" rel="#L419">419</span>
<span id="LID420" rel="#L420">420</span>
<span id="LID421" rel="#L421">421</span>
<span id="LID422" rel="#L422">422</span>
<span id="LID423" rel="#L423">423</span>
<span id="LID424" rel="#L424">424</span>
<span id="LID425" rel="#L425">425</span>
<span id="LID426" rel="#L426">426</span>
<span id="LID427" rel="#L427">427</span>
<span id="LID428" rel="#L428">428</span>
<span id="LID429" rel="#L429">429</span>
<span id="LID430" rel="#L430">430</span>
<span id="LID431" rel="#L431">431</span>
<span id="LID432" rel="#L432">432</span>
<span id="LID433" rel="#L433">433</span>
<span id="LID434" rel="#L434">434</span>
<span id="LID435" rel="#L435">435</span>
<span id="LID436" rel="#L436">436</span>
<span id="LID437" rel="#L437">437</span>
<span id="LID438" rel="#L438">438</span>
<span id="LID439" rel="#L439">439</span>
</pre>
          </td>
          <td width="100%">
            
              
                <div class="highlight"><pre><div class='line' id='LC1'><span class="n">function</span> <span class="n">midi</span> <span class="o">=</span> <span class="n">readmidi</span><span class="p">(</span><span class="n">filename</span><span class="p">,</span> <span class="n">rawbytes</span><span class="p">)</span></div><div class='line' id='LC2'><span class="o">%</span> <span class="n">midi</span> <span class="o">=</span> <span class="n">readmidi</span><span class="p">(</span><span class="n">filename</span><span class="p">,</span> <span class="n">rawbytes</span><span class="p">)</span></div><div class='line' id='LC3'><span class="o">%</span> <span class="n">midi</span> <span class="o">=</span> <span class="n">readmidi</span><span class="p">(</span><span class="n">filename</span><span class="p">)</span></div><div class='line' id='LC4'><span class="o">%</span></div><div class='line' id='LC5'><span class="o">%</span> <span class="n">Read</span> <span class="n">MIDI</span> <span class="n">file</span> <span class="n">and</span> <span class="n">store</span> <span class="k">in</span> <span class="n">a</span> <span class="n">Matlab</span> <span class="n">structure</span></div><div class='line' id='LC6'><span class="o">%</span> <span class="p">(</span><span class="n">use</span> <span class="n">midiInfo</span><span class="p">.</span><span class="n">m</span> <span class="n">to</span> <span class="n">see</span> <span class="n">structure</span> <span class="n">detail</span><span class="p">)</span></div><div class='line' id='LC7'><span class="o">%</span></div><div class='line' id='LC8'><span class="o">%</span> <span class="nl">Inputs:</span></div><div class='line' id='LC9'><span class="o">%</span>  <span class="n">filename</span> <span class="o">-</span> <span class="n">input</span> <span class="n">MIDI</span> <span class="n">file</span></div><div class='line' id='LC10'><span class="o">%</span>  <span class="n">rawbytes</span> <span class="o">-</span> <span class="mi">0</span> <span class="n">or</span> <span class="mi">1</span><span class="o">:</span> <span class="n">Include</span> <span class="n">raw</span> <span class="n">bytes</span> <span class="k">in</span> <span class="n">structure</span></div><div class='line' id='LC11'><span class="o">%</span>             <span class="n">This</span> <span class="n">info</span> <span class="n">is</span> <span class="n">redundant</span><span class="p">,</span> <span class="n">but</span> <span class="n">can</span> <span class="n">be</span></div><div class='line' id='LC12'><span class="o">%</span>             <span class="n">useful</span> <span class="k">for</span> <span class="n">debugging</span><span class="p">.</span> <span class="k">default</span><span class="o">=</span><span class="mi">0</span></div><div class='line' id='LC13'><span class="o">%</span></div><div class='line' id='LC14'><br/></div><div class='line' id='LC15'><span class="o">%</span> <span class="n">Copyright</span> <span class="p">(</span><span class="n">c</span><span class="p">)</span> <span class="mi">2009</span> <span class="n">Ken</span> <span class="n">Schutte</span></div><div class='line' id='LC16'><span class="o">%</span> <span class="n">more</span> <span class="n">info</span> <span class="nl">at:</span> <span class="nl">http:</span><span class="c1">//www.kenschutte.com/midi</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="k">if</span> <span class="p">(</span><span class="n">nargin</span><span class="o">&lt;</span><span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC20'>&nbsp;&nbsp;<span class="n">rawbytes</span><span class="o">=</span><span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC21'><span class="n">end</span></div><div class='line' id='LC22'><br/></div><div class='line' id='LC23'><span class="n">fid</span> <span class="o">=</span> <span class="n">fopen</span><span class="p">(</span><span class="n">filename</span><span class="p">);</span></div><div class='line' id='LC24'><span class="p">[</span><span class="n">A</span> <span class="n">count</span><span class="p">]</span> <span class="o">=</span> <span class="n">fread</span><span class="p">(</span><span class="n">fid</span><span class="p">,</span><span class="err">&#39;</span><span class="n">uint8</span><span class="err">&#39;</span><span class="p">);</span></div><div class='line' id='LC25'><span class="n">fclose</span><span class="p">(</span><span class="n">fid</span><span class="p">);</span></div><div class='line' id='LC26'><br/></div><div class='line' id='LC27'><span class="k">if</span> <span class="p">(</span><span class="n">rawbytes</span><span class="p">)</span> <span class="n">midi</span><span class="p">.</span><span class="n">rawbytes_all</span> <span class="o">=</span> <span class="n">A</span><span class="p">;</span> <span class="n">end</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'><span class="o">%</span> <span class="n">realtime</span> <span class="nl">events:</span> <span class="nl">status:</span> <span class="p">[</span><span class="n">F8</span><span class="p">,</span> <span class="n">FF</span><span class="p">].</span>  <span class="n">no</span> <span class="n">data</span> <span class="n">bytes</span></div><div class='line' id='LC30'><span class="o">%</span><span class="n">clock</span><span class="p">,</span> <span class="n">undefined</span><span class="p">,</span> <span class="n">start</span><span class="p">,</span> <span class="k">continue</span><span class="p">,</span> <span class="n">stop</span><span class="p">,</span> <span class="n">undefined</span><span class="p">,</span> <span class="n">active</span></div><div class='line' id='LC31'><span class="o">%</span><span class="n">sensing</span><span class="p">,</span> <span class="n">systerm</span> <span class="n">reset</span></div><div class='line' id='LC32'><br/></div><div class='line' id='LC33'><span class="o">%</span> <span class="n">file</span> <span class="n">consists</span> <span class="n">of</span> <span class="s">&quot;header chunk&quot;</span> <span class="n">and</span> <span class="s">&quot;track chunks&quot;</span></div><div class='line' id='LC34'><span class="o">%</span>   <span class="mi">4</span><span class="n">B</span>  <span class="err">&#39;</span><span class="n">MThd</span><span class="err">&#39;</span> <span class="p">(</span><span class="n">header</span><span class="p">)</span> <span class="n">or</span> <span class="err">&#39;</span><span class="n">MTrk</span><span class="err">&#39;</span> <span class="p">(</span><span class="n">track</span><span class="p">)</span></div><div class='line' id='LC35'><span class="o">%</span>   <span class="mi">4</span><span class="n">B</span>  <span class="mi">32</span><span class="o">-</span><span class="n">bit</span> <span class="kt">unsigned</span> <span class="kt">int</span> <span class="o">=</span> <span class="n">number</span> <span class="n">of</span> <span class="n">bytes</span> <span class="k">in</span> <span class="n">chunk</span><span class="p">,</span> <span class="n">not</span></div><div class='line' id='LC36'><span class="o">%</span>       <span class="n">counting</span> <span class="n">these</span> <span class="n">first</span> <span class="mi">8</span></div><div class='line' id='LC37'><br/></div><div class='line' id='LC38'><br/></div><div class='line' id='LC39'><span class="o">%</span> <span class="n">HEADER</span> <span class="n">CHUNK</span> <span class="o">--------------------------------------------------------</span></div><div class='line' id='LC40'><span class="o">%</span> <span class="mi">4</span><span class="n">B</span> <span class="err">&#39;</span><span class="n">Mthd</span><span class="err">&#39;</span></div><div class='line' id='LC41'><span class="o">%</span> <span class="mi">4</span><span class="n">B</span> <span class="n">length</span></div><div class='line' id='LC42'><span class="o">%</span> <span class="mi">2</span><span class="n">B</span> <span class="n">file</span> <span class="n">format</span></div><div class='line' id='LC43'><span class="o">%</span>    <span class="mi">0</span><span class="o">=</span><span class="n">single</span> <span class="n">track</span><span class="p">,</span> <span class="mi">1</span><span class="o">=</span><span class="n">multitrack</span> <span class="n">synchronous</span><span class="p">,</span> <span class="mi">2</span><span class="o">=</span><span class="n">multitrack</span> <span class="n">asynchronous</span></div><div class='line' id='LC44'><span class="o">%</span>    <span class="n">Synchronous</span> <span class="n">formats</span> <span class="n">start</span> <span class="n">all</span> <span class="n">tracks</span> <span class="n">at</span> <span class="n">the</span> <span class="n">same</span> <span class="n">time</span><span class="p">,</span> <span class="k">while</span> <span class="n">asynchronous</span> <span class="n">formats</span> <span class="n">can</span> <span class="n">start</span> <span class="n">and</span> <span class="n">end</span> <span class="n">any</span> <span class="n">track</span> <span class="n">at</span> <span class="n">any</span> <span class="n">time</span> <span class="n">during</span> <span class="n">the</span> <span class="n">score</span><span class="p">.</span></div><div class='line' id='LC45'><span class="o">%</span> <span class="mi">2</span><span class="n">B</span> <span class="n">track</span> <span class="n">cout</span> <span class="p">(</span><span class="n">must</span> <span class="n">be</span> <span class="mi">1</span> <span class="k">for</span> <span class="n">format</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC46'><span class="o">%</span> <span class="mi">2</span><span class="n">B</span> <span class="n">num</span> <span class="n">delta</span><span class="o">-</span><span class="n">time</span> <span class="n">ticks</span> <span class="n">per</span> <span class="n">quarter</span> <span class="n">note</span></div><div class='line' id='LC47'><span class="o">%</span></div><div class='line' id='LC48'><br/></div><div class='line' id='LC49'><span class="k">if</span> <span class="o">~</span><span class="n">isequal</span><span class="p">(</span><span class="n">A</span><span class="p">(</span><span class="mi">1</span><span class="o">:</span><span class="mi">4</span><span class="p">)</span><span class="err">&#39;</span><span class="p">,[</span><span class="mi">77</span> <span class="mi">84</span> <span class="mi">104</span> <span class="mi">100</span><span class="p">])</span>  <span class="o">%</span> <span class="kt">double</span><span class="p">(</span><span class="err">&#39;</span><span class="n">MThd</span><span class="err">&#39;</span><span class="p">)</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">error</span><span class="p">(</span><span class="err">&#39;</span><span class="n">File</span> <span class="n">does</span> <span class="n">not</span> <span class="n">begin</span> <span class="n">with</span> <span class="n">header</span> <span class="n">ID</span> <span class="p">(</span><span class="n">MThd</span><span class="p">)</span><span class="err">&#39;</span><span class="p">);</span></div><div class='line' id='LC51'><span class="n">end</span></div><div class='line' id='LC52'><br/></div><div class='line' id='LC53'><span class="n">header_len</span> <span class="o">=</span> <span class="n">decode_int</span><span class="p">(</span><span class="n">A</span><span class="p">(</span><span class="mi">5</span><span class="o">:</span><span class="mi">8</span><span class="p">));</span></div><div class='line' id='LC54'><span class="k">if</span> <span class="p">(</span><span class="n">header_len</span> <span class="o">==</span> <span class="mi">6</span><span class="p">)</span></div><div class='line' id='LC55'><span class="k">else</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">error</span><span class="p">(</span><span class="err">&#39;</span><span class="n">Header</span> <span class="n">length</span> <span class="o">!=</span> <span class="mi">6</span> <span class="n">bytes</span><span class="p">.</span><span class="err">&#39;</span><span class="p">);</span></div><div class='line' id='LC57'><span class="n">end</span></div><div class='line' id='LC58'><br/></div><div class='line' id='LC59'><span class="n">format</span> <span class="o">=</span> <span class="n">decode_int</span><span class="p">(</span><span class="n">A</span><span class="p">(</span><span class="mi">9</span><span class="o">:</span><span class="mi">10</span><span class="p">));</span></div><div class='line' id='LC60'><span class="k">if</span> <span class="p">(</span><span class="n">format</span><span class="o">==</span><span class="mi">0</span> <span class="o">||</span> <span class="n">format</span><span class="o">==</span><span class="mi">1</span> <span class="o">||</span> <span class="n">format</span><span class="o">==</span><span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">midi</span><span class="p">.</span><span class="n">format</span> <span class="o">=</span> <span class="n">format</span><span class="p">;</span></div><div class='line' id='LC62'><span class="k">else</span>    </div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">error</span><span class="p">(</span><span class="err">&#39;</span><span class="n">Format</span> <span class="n">does</span> <span class="n">not</span> <span class="n">equal</span> <span class="mi">0</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="n">or</span> <span class="mi">2</span><span class="err">&#39;</span><span class="p">);</span></div><div class='line' id='LC64'><span class="n">end</span></div><div class='line' id='LC65'><br/></div><div class='line' id='LC66'><span class="n">num_tracks</span> <span class="o">=</span> <span class="n">decode_int</span><span class="p">(</span><span class="n">A</span><span class="p">(</span><span class="mi">11</span><span class="o">:</span><span class="mi">12</span><span class="p">));</span></div><div class='line' id='LC67'><span class="k">if</span> <span class="p">(</span><span class="n">format</span><span class="o">==</span><span class="mi">0</span> <span class="o">&amp;&amp;</span> <span class="n">num_tracks</span><span class="o">~=</span><span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">error</span><span class="p">(</span><span class="err">&#39;</span><span class="n">File</span> <span class="n">is</span> <span class="n">format</span> <span class="mi">0</span><span class="p">,</span> <span class="n">but</span> <span class="n">num_tracks</span> <span class="o">!=</span> <span class="mi">1</span><span class="err">&#39;</span><span class="p">);</span></div><div class='line' id='LC69'><span class="n">end</span></div><div class='line' id='LC70'><br/></div><div class='line' id='LC71'><span class="n">time_unit</span> <span class="o">=</span> <span class="n">decode_int</span><span class="p">(</span><span class="n">A</span><span class="p">(</span><span class="mi">13</span><span class="o">:</span><span class="mi">14</span><span class="p">));</span></div><div class='line' id='LC72'><span class="k">if</span> <span class="p">(</span><span class="n">bitand</span><span class="p">(</span><span class="n">time_unit</span><span class="p">,</span><span class="mi">2</span><span class="o">^</span><span class="mi">15</span><span class="p">)</span><span class="o">==</span><span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC73'>&nbsp;&nbsp;<span class="n">midi</span><span class="p">.</span><span class="n">ticks_per_quarter_note</span> <span class="o">=</span> <span class="n">time_unit</span><span class="p">;</span></div><div class='line' id='LC74'><span class="k">else</span></div><div class='line' id='LC75'>&nbsp;&nbsp;<span class="n">error</span><span class="p">(</span><span class="err">&#39;</span><span class="nl">Header:</span> <span class="n">SMPTE</span> <span class="n">time</span> <span class="n">format</span> <span class="n">found</span> <span class="o">-</span> <span class="n">not</span> <span class="n">currently</span> <span class="n">supported</span><span class="err">&#39;</span><span class="p">);</span></div><div class='line' id='LC76'><span class="n">end</span></div><div class='line' id='LC77'><br/></div><div class='line' id='LC78'><span class="k">if</span> <span class="p">(</span><span class="n">rawbytes</span><span class="p">)</span></div><div class='line' id='LC79'>&nbsp;&nbsp;<span class="n">midi</span><span class="p">.</span><span class="n">rawbytes_header</span> <span class="o">=</span> <span class="n">A</span><span class="p">(</span><span class="mi">1</span><span class="o">:</span><span class="mi">14</span><span class="p">);</span></div><div class='line' id='LC80'><span class="n">end</span></div><div class='line' id='LC81'><br/></div><div class='line' id='LC82'><span class="o">%</span> <span class="n">end</span> <span class="n">header</span> <span class="n">parse</span> <span class="o">----------------------------------------------------</span></div><div class='line' id='LC83'><br/></div><div class='line' id='LC84'><br/></div><div class='line' id='LC85'><br/></div><div class='line' id='LC86'><br/></div><div class='line' id='LC87'><br/></div><div class='line' id='LC88'><br/></div><div class='line' id='LC89'><span class="o">%</span> <span class="n">BREAK</span> <span class="n">INTO</span> <span class="n">SEPARATE</span> <span class="n">TRACKS</span> <span class="o">------------------------------------------</span></div><div class='line' id='LC90'><span class="o">%</span> <span class="n">midi</span><span class="p">.</span><span class="n">track</span><span class="p">(</span><span class="mi">1</span><span class="p">).</span><span class="n">data</span> <span class="o">=</span> <span class="p">[</span><span class="n">byte</span> <span class="n">byte</span> <span class="n">byte</span> <span class="p">...];</span></div><div class='line' id='LC91'><span class="o">%</span> <span class="n">midi</span><span class="p">.</span><span class="n">track</span><span class="p">(</span><span class="mi">2</span><span class="p">).</span><span class="n">date</span> <span class="o">=</span> <span class="p">...</span></div><div class='line' id='LC92'><span class="o">%</span> <span class="p">...</span></div><div class='line' id='LC93'><span class="o">%</span></div><div class='line' id='LC94'><span class="o">%</span> <span class="n">Track</span> <span class="n">Chunks</span><span class="o">---------</span></div><div class='line' id='LC95'><span class="o">%</span> <span class="mi">4</span><span class="n">B</span> <span class="err">&#39;</span><span class="n">MTrk</span><span class="err">&#39;</span></div><div class='line' id='LC96'><span class="o">%</span> <span class="mi">4</span><span class="n">B</span> <span class="n">length</span> <span class="p">(</span><span class="n">after</span> <span class="n">first</span> <span class="mi">8</span><span class="n">B</span><span class="p">)</span></div><div class='line' id='LC97'><span class="o">%</span></div><div class='line' id='LC98'><span class="n">ctr</span> <span class="o">=</span> <span class="mi">15</span><span class="p">;</span></div><div class='line' id='LC99'><span class="k">for</span> <span class="n">i</span><span class="o">=</span><span class="mi">1</span><span class="o">:</span><span class="n">num_tracks</span></div><div class='line' id='LC100'>&nbsp;&nbsp;</div><div class='line' id='LC101'>&nbsp;&nbsp;<span class="k">if</span> <span class="o">~</span><span class="n">isequal</span><span class="p">(</span><span class="n">A</span><span class="p">(</span><span class="nl">ctr:</span><span class="n">ctr</span><span class="o">+</span><span class="mi">3</span><span class="p">)</span><span class="err">&#39;</span><span class="p">,[</span><span class="mi">77</span> <span class="mi">84</span> <span class="mi">114</span> <span class="mi">107</span><span class="p">])</span>  <span class="o">%</span> <span class="kt">double</span><span class="p">(</span><span class="err">&#39;</span><span class="n">MTrk</span><span class="err">&#39;</span><span class="p">)</span></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">error</span><span class="p">([</span><span class="err">&#39;</span><span class="n">Track</span> <span class="err">&#39;</span> <span class="n">num2str</span><span class="p">(</span><span class="n">i</span><span class="p">)</span> <span class="err">&#39;</span> <span class="n">does</span> <span class="n">not</span> <span class="n">begin</span> <span class="n">with</span> <span class="n">track</span> <span class="n">ID</span><span class="o">=</span><span class="n">MTrk</span><span class="err">&#39;</span><span class="p">]);</span></div><div class='line' id='LC103'>&nbsp;&nbsp;<span class="n">end</span></div><div class='line' id='LC104'>&nbsp;&nbsp;<span class="n">ctr</span> <span class="o">=</span> <span class="n">ctr</span><span class="o">+</span><span class="mi">4</span><span class="p">;</span></div><div class='line' id='LC105'>&nbsp;&nbsp;</div><div class='line' id='LC106'>&nbsp;&nbsp;<span class="n">track_len</span> <span class="o">=</span> <span class="n">decode_int</span><span class="p">(</span><span class="n">A</span><span class="p">(</span><span class="nl">ctr:</span><span class="n">ctr</span><span class="o">+</span><span class="mi">3</span><span class="p">));</span></div><div class='line' id='LC107'>&nbsp;&nbsp;<span class="n">ctr</span> <span class="o">=</span> <span class="n">ctr</span><span class="o">+</span><span class="mi">4</span><span class="p">;</span></div><div class='line' id='LC108'>&nbsp;&nbsp;</div><div class='line' id='LC109'>&nbsp;&nbsp;<span class="o">%</span> <span class="n">have</span> <span class="n">track</span><span class="p">.</span><span class="n">rawbytes</span> <span class="n">hold</span> <span class="n">initial</span> <span class="mi">8</span><span class="n">B</span> <span class="n">also</span><span class="p">...</span></div><div class='line' id='LC110'>&nbsp;&nbsp;<span class="n">track_rawbytes</span><span class="p">{</span><span class="n">i</span><span class="p">}</span> <span class="o">=</span> <span class="n">A</span><span class="p">((</span><span class="n">ctr</span><span class="o">-</span><span class="mi">8</span><span class="p">)</span><span class="o">:</span><span class="p">(</span><span class="n">ctr</span><span class="o">+</span><span class="n">track_len</span><span class="o">-</span><span class="mi">1</span><span class="p">));</span></div><div class='line' id='LC111'>&nbsp;&nbsp;</div><div class='line' id='LC112'>&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">rawbytes</span><span class="p">)</span></div><div class='line' id='LC113'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">midi</span><span class="p">.</span><span class="n">track</span><span class="p">(</span><span class="n">i</span><span class="p">).</span><span class="n">rawbytes_header</span> <span class="o">=</span> <span class="n">A</span><span class="p">(</span><span class="n">ctr</span><span class="o">-</span><span class="mi">8</span><span class="o">:</span><span class="n">ctr</span><span class="o">-</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC114'>&nbsp;&nbsp;<span class="n">end</span></div><div class='line' id='LC115'>&nbsp;&nbsp;</div><div class='line' id='LC116'>&nbsp;&nbsp;<span class="n">ctr</span> <span class="o">=</span> <span class="n">ctr</span><span class="o">+</span><span class="n">track_len</span><span class="p">;</span></div><div class='line' id='LC117'><span class="n">end</span></div><div class='line' id='LC118'><span class="o">%</span> <span class="o">----------------------------------------------------------------------</span></div><div class='line' id='LC119'><br/></div><div class='line' id='LC120'><br/></div><div class='line' id='LC121'><br/></div><div class='line' id='LC122'><br/></div><div class='line' id='LC123'><br/></div><div class='line' id='LC124'><br/></div><div class='line' id='LC125'><span class="o">%</span> <span class="nl">Events:</span></div><div class='line' id='LC126'><span class="o">%</span>  <span class="o">-</span> <span class="n">meta</span> <span class="nl">events:</span> <span class="n">start</span> <span class="n">with</span> <span class="err">&#39;</span><span class="n">FF</span><span class="err">&#39;</span></div><div class='line' id='LC127'><span class="o">%</span>  <span class="o">-</span> <span class="n">MIDI</span> <span class="nl">events:</span> <span class="n">all</span> <span class="n">others</span></div><div class='line' id='LC128'><br/></div><div class='line' id='LC129'><span class="o">%</span> <span class="n">MIDI</span> <span class="nl">events:</span></div><div class='line' id='LC130'><span class="o">%</span>  <span class="n">optional</span> <span class="n">command</span> <span class="n">byte</span> <span class="o">+</span> <span class="mi">0</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="n">or</span> <span class="mi">2</span> <span class="n">bytes</span> <span class="n">of</span> <span class="n">parameters</span></div><div class='line' id='LC131'><span class="o">%</span>  <span class="s">&quot;running mode&quot;</span><span class="o">:</span> <span class="n">command</span> <span class="n">byte</span> <span class="n">omitted</span><span class="p">.</span></div><div class='line' id='LC132'><span class="o">%</span></div><div class='line' id='LC133'><span class="o">%</span> <span class="n">all</span> <span class="n">midi</span> <span class="n">command</span> <span class="n">bytes</span> <span class="n">have</span> <span class="n">MSB</span><span class="o">=</span><span class="mi">1</span></div><div class='line' id='LC134'><span class="o">%</span> <span class="n">all</span> <span class="n">data</span> <span class="k">for</span> <span class="n">inside</span> <span class="n">midi</span> <span class="n">command</span> <span class="n">have</span> <span class="n">value</span> <span class="o">&lt;=</span> <span class="mi">127</span> <span class="p">(</span><span class="n">ie</span> <span class="n">MSB</span><span class="o">=</span><span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC135'><span class="o">%</span> <span class="o">-&gt;</span> <span class="n">so</span> <span class="n">can</span> <span class="n">determine</span> <span class="n">running</span> <span class="n">mode</span></div><div class='line' id='LC136'><span class="o">%</span> </div><div class='line' id='LC137'><span class="o">%</span> <span class="n">meta</span> <span class="n">events</span><span class="err">&#39;</span> <span class="n">data</span> <span class="n">may</span> <span class="n">have</span> <span class="n">any</span> <span class="n">values</span> <span class="p">(</span><span class="n">meta</span> <span class="n">events</span> <span class="n">have</span> <span class="n">to</span> <span class="n">set</span></div><div class='line' id='LC138'><span class="o">%</span> <span class="n">len</span><span class="p">)</span></div><div class='line' id='LC139'><span class="o">%</span></div><div class='line' id='LC140'><br/></div><div class='line' id='LC141'><br/></div><div class='line' id='LC142'><br/></div><div class='line' id='LC143'><span class="o">%</span> <span class="err">&#39;</span><span class="n">Fn</span><span class="err">&#39;</span> <span class="n">MIDI</span> <span class="nl">commands:</span></div><div class='line' id='LC144'><span class="o">%</span>  <span class="n">no</span> <span class="n">chan</span><span class="p">.</span> <span class="n">control</span> <span class="n">the</span> <span class="n">entire</span> <span class="n">system</span></div><div class='line' id='LC145'><span class="o">%</span><span class="n">F8</span> <span class="n">Timing</span> <span class="n">Clock</span></div><div class='line' id='LC146'><span class="o">%</span><span class="n">FA</span> <span class="n">start</span> <span class="n">a</span> <span class="n">sequence</span></div><div class='line' id='LC147'><span class="o">%</span><span class="n">FB</span> <span class="k">continue</span> <span class="n">a</span> <span class="n">sequence</span></div><div class='line' id='LC148'><span class="o">%</span><span class="n">FC</span> <span class="n">stop</span> <span class="n">a</span> <span class="n">sequence</span></div><div class='line' id='LC149'><br/></div><div class='line' id='LC150'><span class="o">%</span> <span class="n">Meta</span> <span class="nl">events:</span></div><div class='line' id='LC151'><span class="o">%</span>  <span class="mi">1</span><span class="n">B</span> <span class="mh">0xFF</span></div><div class='line' id='LC152'><span class="o">%</span>  <span class="mi">1</span><span class="n">B</span> <span class="n">event</span> <span class="n">type</span></div><div class='line' id='LC153'><span class="o">%</span>  <span class="mi">1</span><span class="n">B</span> <span class="n">length</span> <span class="n">of</span> <span class="n">additional</span> <span class="n">data</span></div><div class='line' id='LC154'><span class="o">%</span>  <span class="o">??</span> <span class="n">additional</span> <span class="n">data</span></div><div class='line' id='LC155'><span class="o">%</span></div><div class='line' id='LC156'><br/></div><div class='line' id='LC157'><br/></div><div class='line' id='LC158'><span class="o">%</span> <span class="s">&quot;channel mode messages&quot;</span></div><div class='line' id='LC159'><span class="o">%</span> <span class="n">have</span> <span class="n">same</span> <span class="n">code</span> <span class="n">as</span> <span class="s">&quot;control change&quot;</span><span class="o">:</span> <span class="mh">0xB</span><span class="n">n</span></div><div class='line' id='LC160'><span class="o">%</span>  <span class="n">but</span> <span class="n">uses</span> <span class="n">reserved</span> <span class="n">controller</span> <span class="n">numbers</span> <span class="mi">120</span><span class="o">-</span><span class="mi">127</span></div><div class='line' id='LC161'><span class="o">%</span></div><div class='line' id='LC162'><br/></div><div class='line' id='LC163'><br/></div><div class='line' id='LC164'><span class="o">%</span><span class="n">Midi</span> <span class="n">events</span> <span class="n">consist</span> <span class="n">of</span> <span class="n">an</span> <span class="n">optional</span> <span class="n">command</span> <span class="n">byte</span> </div><div class='line' id='LC165'><span class="o">%</span> <span class="n">followed</span> <span class="n">by</span> <span class="n">zero</span><span class="p">,</span> <span class="n">one</span> <span class="n">or</span> <span class="n">two</span> <span class="n">bytes</span> <span class="n">of</span> <span class="n">parameters</span><span class="p">.</span></div><div class='line' id='LC166'><span class="o">%</span> <span class="n">In</span> <span class="n">running</span> <span class="n">mode</span><span class="p">,</span> <span class="n">the</span> <span class="n">command</span> <span class="n">can</span> <span class="n">be</span> <span class="n">omitted</span><span class="p">,</span> <span class="k">in</span> </div><div class='line' id='LC167'><span class="o">%</span> <span class="n">which</span> <span class="k">case</span> <span class="n">the</span> <span class="n">last</span> <span class="n">MIDI</span> <span class="n">command</span> <span class="n">specified</span> <span class="n">is</span> </div><div class='line' id='LC168'><span class="o">%</span> <span class="n">assumed</span><span class="p">.</span>  <span class="n">The</span> <span class="n">first</span> <span class="n">bit</span> <span class="n">of</span> <span class="n">a</span> <span class="n">command</span> <span class="n">byte</span> <span class="n">is</span> <span class="mi">1</span><span class="p">,</span> </div><div class='line' id='LC169'><span class="o">%</span> <span class="k">while</span> <span class="n">the</span> <span class="n">first</span> <span class="n">bit</span> <span class="n">of</span> <span class="n">a</span> <span class="n">parameter</span> <span class="n">is</span> <span class="n">always</span> <span class="mf">0.</span> </div><div class='line' id='LC170'><span class="o">%</span>   <span class="n">In</span> <span class="n">addition</span><span class="p">,</span> <span class="n">the</span> <span class="n">last</span> <span class="mi">4</span> <span class="n">bits</span> <span class="n">of</span> <span class="n">a</span> <span class="n">command</span> </div><div class='line' id='LC171'><span class="o">%</span>   <span class="n">indicate</span> <span class="n">the</span> <span class="n">channel</span> <span class="n">to</span> <span class="n">which</span> <span class="n">the</span> <span class="n">event</span> <span class="n">should</span> </div><div class='line' id='LC172'><span class="o">%</span>   <span class="n">be</span> <span class="n">sent</span><span class="p">;</span> <span class="n">therefore</span><span class="p">,</span> <span class="n">there</span> <span class="n">are</span> <span class="mi">6</span> <span class="n">possible</span> </div><div class='line' id='LC173'><span class="o">%</span>   <span class="n">commands</span> <span class="p">(</span><span class="n">really</span> <span class="mi">7</span><span class="p">,</span> <span class="n">but</span> <span class="n">we</span> <span class="n">will</span> <span class="n">discuss</span> <span class="n">the</span> <span class="n">x</span><span class="err">&#39;</span><span class="n">Fn</span><span class="err">&#39;</span> </div><div class='line' id='LC174'><span class="o">%</span>   <span class="n">commands</span> <span class="n">later</span><span class="p">)</span> <span class="n">that</span> <span class="n">can</span> <span class="n">be</span> <span class="n">specified</span><span class="p">.</span>  <span class="n">They</span> <span class="nl">are:</span></div><div class='line' id='LC175'><br/></div><div class='line' id='LC176'><br/></div><div class='line' id='LC177'><span class="o">%</span> <span class="n">parse</span> <span class="n">tracks</span> <span class="o">-----------------------------------------</span></div><div class='line' id='LC178'><span class="k">for</span> <span class="n">i</span><span class="o">=</span><span class="mi">1</span><span class="o">:</span><span class="n">num_tracks</span></div><div class='line' id='LC179'>&nbsp;&nbsp;</div><div class='line' id='LC180'>&nbsp;&nbsp;<span class="n">track</span> <span class="o">=</span> <span class="n">track_rawbytes</span><span class="p">{</span><span class="n">i</span><span class="p">};</span></div><div class='line' id='LC181'><br/></div><div class='line' id='LC182'>&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">rawbytes</span><span class="p">);</span> <span class="n">midi</span><span class="p">.</span><span class="n">track</span><span class="p">(</span><span class="n">i</span><span class="p">).</span><span class="n">rawbytes</span> <span class="o">=</span> <span class="n">track</span><span class="p">;</span> <span class="n">end</span></div><div class='line' id='LC183'>&nbsp;&nbsp;</div><div class='line' id='LC184'>&nbsp;&nbsp;<span class="n">msgCtr</span> <span class="o">=</span> <span class="mi">1</span><span class="p">;</span></div><div class='line' id='LC185'>&nbsp;&nbsp;<span class="n">ctr</span><span class="o">=</span><span class="mi">9</span><span class="p">;</span>  <span class="o">%</span> <span class="n">first</span> <span class="mi">8</span><span class="n">B</span> <span class="n">were</span> <span class="n">MTrk</span> <span class="n">and</span> <span class="n">length</span></div><div class='line' id='LC186'>&nbsp;&nbsp;<span class="k">while</span> <span class="p">(</span><span class="n">ctr</span> <span class="o">&lt;</span> <span class="n">length</span><span class="p">(</span><span class="n">track_rawbytes</span><span class="p">{</span><span class="n">i</span><span class="p">}))</span></div><div class='line' id='LC187'><br/></div><div class='line' id='LC188'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">clear</span> <span class="n">currMsg</span><span class="p">;</span></div><div class='line' id='LC189'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">currMsg</span><span class="p">.</span><span class="n">used_running_mode</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC190'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="nl">note:</span></div><div class='line' id='LC191'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span>  <span class="p">.</span><span class="n">used_running_mode</span> <span class="n">is</span> <span class="n">necessary</span> <span class="n">only</span> <span class="n">to</span> </div><div class='line' id='LC192'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span>  <span class="n">be</span> <span class="n">able</span> <span class="n">to</span> <span class="n">reconstruct</span> <span class="n">a</span> <span class="n">file</span> <span class="n">_exactly_</span> <span class="n">from</span> </div><div class='line' id='LC193'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span>  <span class="n">the</span> <span class="err">&#39;</span><span class="n">midi</span><span class="err">&#39;</span> <span class="n">structure</span><span class="p">.</span>  <span class="n">this</span> <span class="n">is</span> <span class="n">helpful</span> <span class="k">for</span> </div><div class='line' id='LC194'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span>  <span class="n">debugging</span> <span class="n">since</span> <span class="n">write</span><span class="p">(</span><span class="n">read</span><span class="p">(</span><span class="n">filename</span><span class="p">))</span> <span class="n">can</span> <span class="n">be</span> </div><div class='line' id='LC195'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span>  <span class="n">tested</span> <span class="k">for</span> <span class="n">exact</span> <span class="n">replication</span><span class="p">...</span></div><div class='line' id='LC196'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span></div><div class='line' id='LC197'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC198'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ctr_start_msg</span> <span class="o">=</span> <span class="n">ctr</span><span class="p">;</span></div><div class='line' id='LC199'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC200'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">deltatime</span><span class="p">,</span><span class="n">ctr</span><span class="p">]</span> <span class="o">=</span> <span class="n">decode_var_length</span><span class="p">(</span><span class="n">track</span><span class="p">,</span> <span class="n">ctr</span><span class="p">);</span></div><div class='line' id='LC201'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC202'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="o">?</span></div><div class='line' id='LC203'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span><span class="k">if</span> <span class="p">(</span><span class="n">rawbytes</span><span class="p">)</span></div><div class='line' id='LC204'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span>  <span class="n">currMsg</span><span class="p">.</span><span class="n">rawbytes_deltatime</span> <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="nl">ctr_start_msg:</span><span class="n">ctr</span><span class="o">-</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC205'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span><span class="n">end</span></div><div class='line' id='LC206'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC207'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="n">deltaime</span> <span class="n">must</span> <span class="n">be</span> <span class="mi">1</span><span class="o">-</span><span class="mi">4</span> <span class="n">bytes</span> <span class="kt">long</span><span class="p">.</span></div><div class='line' id='LC208'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="n">could</span> <span class="n">check</span> <span class="n">here</span><span class="p">...</span></div><div class='line' id='LC209'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC210'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC211'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="n">CHECK</span> <span class="n">FOR</span> <span class="n">META</span> <span class="n">EVENTS</span> <span class="o">------------------------</span></div><div class='line' id='LC212'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="err">&#39;</span><span class="n">FF</span><span class="err">&#39;</span></div><div class='line' id='LC213'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">track</span><span class="p">(</span><span class="n">ctr</span><span class="p">)</span><span class="o">==</span><span class="mi">255</span></div><div class='line' id='LC214'><br/></div><div class='line' id='LC215'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">type</span> <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="n">ctr</span><span class="o">+</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC216'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ctr</span> <span class="o">=</span> <span class="n">ctr</span><span class="o">+</span><span class="mi">2</span><span class="p">;</span></div><div class='line' id='LC218'><br/></div><div class='line' id='LC219'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="n">get</span> <span class="n">variable</span> <span class="n">length</span> <span class="err">&#39;</span><span class="n">length</span><span class="err">&#39;</span> <span class="n">field</span></div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="n">len</span><span class="p">,</span><span class="n">ctr</span><span class="p">]</span> <span class="o">=</span> <span class="n">decode_var_length</span><span class="p">(</span><span class="n">track</span><span class="p">,</span> <span class="n">ctr</span><span class="p">);</span></div><div class='line' id='LC221'><br/></div><div class='line' id='LC222'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="nl">note:</span> <span class="n">some</span> <span class="n">meta</span> <span class="n">events</span> <span class="n">have</span> <span class="n">pre</span><span class="o">-</span><span class="n">determined</span> <span class="n">lengths</span><span class="p">...</span></div><div class='line' id='LC223'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span>  <span class="n">we</span> <span class="n">could</span> <span class="n">try</span> <span class="n">verifiying</span> <span class="n">they</span> <span class="n">are</span> <span class="n">correct</span> <span class="n">here</span><span class="p">.</span></div><div class='line' id='LC224'><br/></div><div class='line' id='LC225'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">thedata</span> <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="nl">ctr:</span><span class="n">ctr</span><span class="o">+</span><span class="n">len</span><span class="o">-</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC226'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">chan</span> <span class="o">=</span> <span class="p">[];</span></div><div class='line' id='LC227'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC228'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ctr</span> <span class="o">=</span> <span class="n">ctr</span> <span class="o">+</span> <span class="n">len</span><span class="p">;</span>      </div><div class='line' id='LC229'><br/></div><div class='line' id='LC230'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">midimeta</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC231'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC232'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span> </div><div class='line' id='LC233'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">midimeta</span> <span class="o">=</span> <span class="mi">1</span><span class="p">;</span></div><div class='line' id='LC234'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="n">MIDI</span> <span class="n">EVENT</span> <span class="o">---------------------------</span></div><div class='line' id='LC235'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC236'><br/></div><div class='line' id='LC237'><br/></div><div class='line' id='LC238'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC239'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="n">check</span> <span class="k">for</span> <span class="n">running</span> <span class="nl">mode:</span></div><div class='line' id='LC240'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">track</span><span class="p">(</span><span class="n">ctr</span><span class="p">)</span><span class="o">&lt;</span><span class="mi">128</span><span class="p">)</span></div><div class='line' id='LC241'><br/></div><div class='line' id='LC242'>	<span class="o">%</span> <span class="n">make</span> <span class="n">it</span> <span class="n">re</span><span class="o">-</span><span class="k">do</span> <span class="n">last</span> <span class="nl">command:</span></div><div class='line' id='LC243'>	<span class="o">%</span><span class="n">ctr</span> <span class="o">=</span> <span class="n">ctr</span> <span class="o">-</span> <span class="mi">1</span><span class="p">;</span></div><div class='line' id='LC244'>	<span class="o">%</span><span class="n">track</span><span class="p">(</span><span class="n">ctr</span><span class="p">)</span> <span class="o">=</span> <span class="n">last_byte</span><span class="p">;</span></div><div class='line' id='LC245'>	<span class="n">currMsg</span><span class="p">.</span><span class="n">used_running_mode</span> <span class="o">=</span> <span class="mi">1</span><span class="p">;</span></div><div class='line' id='LC246'><br/></div><div class='line' id='LC247'>	<span class="n">B</span> <span class="o">=</span> <span class="n">last_byte</span><span class="p">;</span></div><div class='line' id='LC248'>	<span class="n">nB</span> <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="n">ctr</span><span class="p">);</span> <span class="o">%</span> <span class="o">?</span></div><div class='line' id='LC249'><br/></div><div class='line' id='LC250'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC251'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC252'>	<span class="n">B</span>  <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="n">ctr</span><span class="p">);</span></div><div class='line' id='LC253'>	<span class="n">nB</span> <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="n">ctr</span><span class="o">+</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC254'><br/></div><div class='line' id='LC255'>	<span class="n">ctr</span> <span class="o">=</span> <span class="n">ctr</span> <span class="o">+</span> <span class="mi">1</span><span class="p">;</span></div><div class='line' id='LC256'><br/></div><div class='line' id='LC257'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">end</span></div><div class='line' id='LC258'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC259'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="nl">nibbles:</span></div><div class='line' id='LC260'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span><span class="n">B</span>  <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="n">ctr</span><span class="p">);</span></div><div class='line' id='LC261'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span><span class="n">nB</span> <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="n">ctr</span><span class="o">+</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC262'><br/></div><div class='line' id='LC263'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC264'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">Hn</span> <span class="o">=</span> <span class="n">bitshift</span><span class="p">(</span><span class="n">B</span><span class="p">,</span><span class="o">-</span><span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC265'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">Ln</span> <span class="o">=</span> <span class="n">bitand</span><span class="p">(</span><span class="n">B</span><span class="p">,</span><span class="mi">15</span><span class="p">);</span></div><div class='line' id='LC266'><br/></div><div class='line' id='LC267'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">chan</span> <span class="o">=</span> <span class="p">[];</span></div><div class='line' id='LC268'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC269'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">msg_type</span> <span class="o">=</span> <span class="n">midi_msg_type</span><span class="p">(</span><span class="n">B</span><span class="p">,</span><span class="n">nB</span><span class="p">);</span></div><div class='line' id='LC270'><br/></div><div class='line' id='LC271'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">%</span> <span class="nl">DEBUG:</span></div><div class='line' id='LC272'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">i</span><span class="o">==</span><span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC273'>	  <span class="k">if</span> <span class="p">(</span><span class="n">msgCtr</span><span class="o">==</span><span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC274'>	    <span class="n">disp</span><span class="p">(</span><span class="n">msg_type</span><span class="p">);</span></div><div class='line' id='LC275'>	  <span class="n">end</span></div><div class='line' id='LC276'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">end</span></div><div class='line' id='LC277'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC278'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">switch</span> <span class="n">msg_type</span></div><div class='line' id='LC280'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC281'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="err">&#39;</span><span class="n">channel_mode</span><span class="err">&#39;</span></div><div class='line' id='LC282'><br/></div><div class='line' id='LC283'>	<span class="o">%</span> <span class="nl">UNSURE:</span> <span class="k">if</span> <span class="n">all</span> <span class="n">channel</span> <span class="n">mode</span> <span class="n">messages</span> <span class="n">have</span> <span class="mi">2</span> <span class="n">data</span> <span class="n">byes</span> <span class="p">(</span><span class="o">?</span><span class="p">)</span></div><div class='line' id='LC284'>	<span class="n">type</span> <span class="o">=</span> <span class="n">bitshift</span><span class="p">(</span><span class="n">Hn</span><span class="p">,</span><span class="mi">4</span><span class="p">)</span> <span class="o">+</span> <span class="p">(</span><span class="n">nB</span><span class="o">-</span><span class="mi">120</span><span class="o">+</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC285'>	<span class="n">thedata</span> <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="nl">ctr:</span><span class="n">ctr</span><span class="o">+</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC286'>	<span class="n">chan</span> <span class="o">=</span> <span class="n">Ln</span><span class="p">;</span></div><div class='line' id='LC287'><br/></div><div class='line' id='LC288'>	<span class="n">ctr</span> <span class="o">=</span> <span class="n">ctr</span> <span class="o">+</span> <span class="mi">2</span><span class="p">;</span></div><div class='line' id='LC289'><br/></div><div class='line' id='LC290'>	<span class="o">%</span> <span class="o">----</span> <span class="n">channel</span> <span class="n">voice</span> <span class="nl">messages:</span></div><div class='line' id='LC291'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="err">&#39;</span><span class="n">channel_voice</span><span class="err">&#39;</span></div><div class='line' id='LC292'><br/></div><div class='line' id='LC293'>	<span class="n">type</span> <span class="o">=</span> <span class="n">bitshift</span><span class="p">(</span><span class="n">Hn</span><span class="p">,</span><span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC294'>	<span class="n">len</span> <span class="o">=</span> <span class="n">channel_voice_msg_len</span><span class="p">(</span><span class="n">type</span><span class="p">);</span> <span class="o">%</span> <span class="n">var</span> <span class="n">length</span> <span class="nl">data:</span></div><div class='line' id='LC295'>	<span class="n">thedata</span> <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="nl">ctr:</span><span class="n">ctr</span><span class="o">+</span><span class="n">len</span><span class="o">-</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC296'>	<span class="n">chan</span> <span class="o">=</span> <span class="n">Ln</span><span class="p">;</span></div><div class='line' id='LC297'><br/></div><div class='line' id='LC298'>	<span class="o">%</span> <span class="nl">DEBUG:</span></div><div class='line' id='LC299'>	<span class="k">if</span> <span class="p">(</span><span class="n">i</span><span class="o">==</span><span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC300'>	  <span class="k">if</span> <span class="p">(</span><span class="n">msgCtr</span><span class="o">==</span><span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC301'>	    <span class="n">disp</span><span class="p">([</span><span class="mi">999</span>  <span class="n">Hn</span> <span class="n">type</span><span class="p">])</span></div><div class='line' id='LC302'>	  <span class="n">end</span></div><div class='line' id='LC303'>	<span class="n">end</span></div><div class='line' id='LC304'><br/></div><div class='line' id='LC305'>	<span class="n">ctr</span> <span class="o">=</span> <span class="n">ctr</span> <span class="o">+</span> <span class="n">len</span><span class="p">;</span></div><div class='line' id='LC306'><br/></div><div class='line' id='LC307'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="err">&#39;</span><span class="n">sysex</span><span class="err">&#39;</span></div><div class='line' id='LC308'><br/></div><div class='line' id='LC309'>	<span class="o">%</span> <span class="nl">UNSURE:</span> <span class="k">do</span> <span class="n">sysex</span> <span class="n">events</span> <span class="p">(</span><span class="n">F0</span><span class="o">-</span><span class="n">F7</span><span class="p">)</span> <span class="n">have</span> </div><div class='line' id='LC310'>	<span class="o">%</span>  <span class="n">variable</span> <span class="n">length</span> <span class="err">&#39;</span><span class="n">length</span><span class="err">&#39;</span> <span class="n">field</span><span class="o">?</span></div><div class='line' id='LC311'><br/></div><div class='line' id='LC312'>	<span class="p">[</span><span class="n">len</span><span class="p">,</span><span class="n">ctr</span><span class="p">]</span> <span class="o">=</span> <span class="n">decode_var_length</span><span class="p">(</span><span class="n">track</span><span class="p">,</span> <span class="n">ctr</span><span class="p">);</span></div><div class='line' id='LC313'><br/></div><div class='line' id='LC314'>	<span class="n">type</span> <span class="o">=</span> <span class="n">B</span><span class="p">;</span></div><div class='line' id='LC315'>	<span class="n">thedata</span> <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="nl">ctr:</span><span class="n">ctr</span><span class="o">+</span><span class="n">len</span><span class="o">-</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC316'>	<span class="n">chan</span> <span class="o">=</span> <span class="p">[];</span></div><div class='line' id='LC317'><br/></div><div class='line' id='LC318'>	<span class="n">ctr</span> <span class="o">=</span> <span class="n">ctr</span> <span class="o">+</span> <span class="n">len</span><span class="p">;</span></div><div class='line' id='LC319'><br/></div><div class='line' id='LC320'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="err">&#39;</span><span class="n">sys_realtime</span><span class="err">&#39;</span></div><div class='line' id='LC321'><br/></div><div class='line' id='LC322'>	<span class="o">%</span> <span class="nl">UNSURE:</span> <span class="n">I</span> <span class="n">think</span> <span class="n">these</span> <span class="n">are</span> <span class="n">all</span> <span class="n">just</span> <span class="n">one</span> <span class="n">byte</span></div><div class='line' id='LC323'>	<span class="n">type</span> <span class="o">=</span> <span class="n">B</span><span class="p">;</span></div><div class='line' id='LC324'>	<span class="n">thedata</span> <span class="o">=</span> <span class="p">[];</span></div><div class='line' id='LC325'>	<span class="n">chan</span> <span class="o">=</span> <span class="p">[];</span></div><div class='line' id='LC326'><br/></div><div class='line' id='LC327'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">end</span></div><div class='line' id='LC328'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC329'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">last_byte</span> <span class="o">=</span> <span class="n">Ln</span> <span class="o">+</span> <span class="n">bitshift</span><span class="p">(</span><span class="n">Hn</span><span class="p">,</span><span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC330'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC331'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">end</span> <span class="o">%</span> <span class="n">end</span> <span class="n">midi</span> <span class="n">event</span> <span class="err">&#39;</span><span class="k">if</span><span class="err">&#39;</span></div><div class='line' id='LC332'><br/></div><div class='line' id='LC333'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC334'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">currMsg</span><span class="p">.</span><span class="n">deltatime</span> <span class="o">=</span> <span class="n">deltatime</span><span class="p">;</span></div><div class='line' id='LC335'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">currMsg</span><span class="p">.</span><span class="n">midimeta</span> <span class="o">=</span> <span class="n">midimeta</span><span class="p">;</span></div><div class='line' id='LC336'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">currMsg</span><span class="p">.</span><span class="n">type</span> <span class="o">=</span> <span class="n">type</span><span class="p">;</span></div><div class='line' id='LC337'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">currMsg</span><span class="p">.</span><span class="n">data</span> <span class="o">=</span> <span class="n">thedata</span><span class="p">;</span></div><div class='line' id='LC338'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">currMsg</span><span class="p">.</span><span class="n">chan</span> <span class="o">=</span> <span class="n">chan</span><span class="p">;</span></div><div class='line' id='LC339'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC340'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="n">rawbytes</span><span class="p">)</span></div><div class='line' id='LC341'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">currMsg</span><span class="p">.</span><span class="n">rawbytes</span> <span class="o">=</span> <span class="n">track</span><span class="p">(</span><span class="nl">ctr_start_msg:</span><span class="n">ctr</span><span class="o">-</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC342'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">end</span></div><div class='line' id='LC343'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC344'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">midi</span><span class="p">.</span><span class="n">track</span><span class="p">(</span><span class="n">i</span><span class="p">).</span><span class="n">messages</span><span class="p">(</span><span class="n">msgCtr</span><span class="p">)</span> <span class="o">=</span> <span class="n">currMsg</span><span class="p">;</span></div><div class='line' id='LC345'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">msgCtr</span> <span class="o">=</span> <span class="n">msgCtr</span> <span class="o">+</span> <span class="mi">1</span><span class="p">;</span></div><div class='line' id='LC346'><br/></div><div class='line' id='LC347'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC348'>&nbsp;&nbsp;<span class="n">end</span> <span class="o">%</span> <span class="n">end</span> <span class="n">loop</span> <span class="n">over</span> <span class="n">rawbytes</span></div><div class='line' id='LC349'><span class="n">end</span> <span class="o">%</span> <span class="n">end</span> <span class="n">loop</span> <span class="n">over</span> <span class="n">tracks</span></div><div class='line' id='LC350'><br/></div><div class='line' id='LC351'><br/></div><div class='line' id='LC352'><span class="n">function</span> <span class="n">val</span><span class="o">=</span><span class="n">decode_int</span><span class="p">(</span><span class="n">A</span><span class="p">)</span></div><div class='line' id='LC353'><br/></div><div class='line' id='LC354'><span class="n">val</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC355'><span class="k">for</span> <span class="n">i</span><span class="o">=</span><span class="mi">1</span><span class="o">:</span><span class="n">length</span><span class="p">(</span><span class="n">A</span><span class="p">)</span></div><div class='line' id='LC356'>&nbsp;&nbsp;<span class="n">val</span> <span class="o">=</span> <span class="n">val</span> <span class="o">+</span> <span class="n">bitshift</span><span class="p">(</span><span class="n">A</span><span class="p">(</span><span class="n">length</span><span class="p">(</span><span class="n">A</span><span class="p">)</span><span class="o">-</span><span class="n">i</span><span class="o">+</span><span class="mi">1</span><span class="p">),</span> <span class="mi">8</span><span class="o">*</span><span class="p">(</span><span class="n">i</span><span class="o">-</span><span class="mi">1</span><span class="p">));</span></div><div class='line' id='LC357'><span class="n">end</span></div><div class='line' id='LC358'><br/></div><div class='line' id='LC359'><br/></div><div class='line' id='LC360'><span class="n">function</span> <span class="n">len</span><span class="o">=</span><span class="n">channel_voice_msg_len</span><span class="p">(</span><span class="n">type</span><span class="p">)</span></div><div class='line' id='LC361'><br/></div><div class='line' id='LC362'><span class="k">if</span>     <span class="p">(</span><span class="n">type</span><span class="o">==</span><span class="mi">128</span><span class="p">);</span> <span class="n">len</span><span class="o">=</span><span class="mi">2</span><span class="p">;</span></div><div class='line' id='LC363'><span class="n">elseif</span> <span class="p">(</span><span class="n">type</span><span class="o">==</span><span class="mi">144</span><span class="p">);</span> <span class="n">len</span><span class="o">=</span><span class="mi">2</span><span class="p">;</span></div><div class='line' id='LC364'><span class="n">elseif</span> <span class="p">(</span><span class="n">type</span><span class="o">==</span><span class="mi">160</span><span class="p">);</span> <span class="n">len</span><span class="o">=</span><span class="mi">2</span><span class="p">;</span></div><div class='line' id='LC365'><span class="n">elseif</span> <span class="p">(</span><span class="n">type</span><span class="o">==</span><span class="mi">176</span><span class="p">);</span> <span class="n">len</span><span class="o">=</span><span class="mi">2</span><span class="p">;</span></div><div class='line' id='LC366'><span class="n">elseif</span> <span class="p">(</span><span class="n">type</span><span class="o">==</span><span class="mi">192</span><span class="p">);</span> <span class="n">len</span><span class="o">=</span><span class="mi">1</span><span class="p">;</span></div><div class='line' id='LC367'><span class="n">elseif</span> <span class="p">(</span><span class="n">type</span><span class="o">==</span><span class="mi">208</span><span class="p">);</span> <span class="n">len</span><span class="o">=</span><span class="mi">1</span><span class="p">;</span></div><div class='line' id='LC368'><span class="n">elseif</span> <span class="p">(</span><span class="n">type</span><span class="o">==</span><span class="mi">224</span><span class="p">);</span> <span class="n">len</span><span class="o">=</span><span class="mi">2</span><span class="p">;</span></div><div class='line' id='LC369'><span class="k">else</span></div><div class='line' id='LC370'>&nbsp;&nbsp;<span class="n">disp</span><span class="p">(</span><span class="n">type</span><span class="p">);</span> <span class="n">error</span><span class="p">(</span><span class="err">&#39;</span><span class="n">bad</span> <span class="n">channel</span> <span class="n">voice</span> <span class="n">message</span> <span class="n">type</span><span class="err">&#39;</span><span class="p">);</span></div><div class='line' id='LC371'><span class="n">end</span></div><div class='line' id='LC372'><br/></div><div class='line' id='LC373'><br/></div><div class='line' id='LC374'><span class="o">%</span></div><div class='line' id='LC375'><span class="o">%</span> <span class="n">decode</span> <span class="n">variable</span> <span class="n">length</span> <span class="n">field</span> <span class="p">(</span><span class="n">often</span> <span class="n">deltatime</span><span class="p">)</span></div><div class='line' id='LC376'><span class="o">%</span></div><div class='line' id='LC377'><span class="o">%</span>  <span class="k">return</span> <span class="n">value</span> <span class="n">and</span> <span class="n">new</span> <span class="n">position</span> <span class="n">of</span> <span class="n">pointer</span> <span class="n">into</span> <span class="err">&#39;</span><span class="n">bytes</span><span class="err">&#39;</span></div><div class='line' id='LC378'><span class="o">%</span></div><div class='line' id='LC379'><span class="n">function</span> <span class="p">[</span><span class="n">val</span><span class="p">,</span><span class="n">ptr</span><span class="p">]</span> <span class="o">=</span> <span class="n">decode_var_length</span><span class="p">(</span><span class="n">bytes</span><span class="p">,</span> <span class="n">ptr</span><span class="p">)</span></div><div class='line' id='LC380'><br/></div><div class='line' id='LC381'><span class="n">keepgoing</span><span class="o">=</span><span class="mi">1</span><span class="p">;</span></div><div class='line' id='LC382'><span class="n">binarystring</span> <span class="o">=</span> <span class="err">&#39;&#39;</span><span class="p">;</span></div><div class='line' id='LC383'><span class="k">while</span> <span class="p">(</span><span class="n">keepgoing</span><span class="p">)</span></div><div class='line' id='LC384'>&nbsp;&nbsp;<span class="o">%</span> <span class="n">check</span> <span class="nl">MSB:</span></div><div class='line' id='LC385'>&nbsp;&nbsp;<span class="o">%</span>  <span class="k">if</span> <span class="n">MSB</span><span class="o">=</span><span class="mi">1</span><span class="p">,</span> <span class="n">then</span> <span class="n">delta</span><span class="o">-</span><span class="n">time</span> <span class="n">continues</span> <span class="n">into</span> <span class="n">next</span> <span class="n">byte</span><span class="p">...</span></div><div class='line' id='LC386'>&nbsp;&nbsp;<span class="k">if</span><span class="p">(</span><span class="o">~</span><span class="n">bitand</span><span class="p">(</span><span class="n">bytes</span><span class="p">(</span><span class="n">ptr</span><span class="p">),</span><span class="mi">128</span><span class="p">))</span></div><div class='line' id='LC387'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">keepgoing</span><span class="o">=</span><span class="mi">0</span><span class="p">;</span></div><div class='line' id='LC388'>&nbsp;&nbsp;<span class="n">end</span></div><div class='line' id='LC389'>&nbsp;&nbsp;<span class="o">%</span> <span class="n">keep</span> <span class="n">appending</span> <span class="n">last</span> <span class="mi">7</span> <span class="n">bits</span> <span class="n">from</span> <span class="n">each</span> <span class="n">byte</span> <span class="k">in</span> <span class="n">the</span> <span class="nl">deltatime:</span></div><div class='line' id='LC390'>&nbsp;&nbsp;<span class="n">binbyte</span> <span class="o">=</span> <span class="p">[</span><span class="err">&#39;</span><span class="mo">00000000</span><span class="err">&#39;</span> <span class="n">dec2base</span><span class="p">(</span><span class="n">bytes</span><span class="p">(</span><span class="n">ptr</span><span class="p">),</span><span class="mi">2</span><span class="p">)];</span></div><div class='line' id='LC391'>&nbsp;&nbsp;<span class="n">binarystring</span> <span class="o">=</span> <span class="p">[</span><span class="n">binarystring</span> <span class="n">binbyte</span><span class="p">(</span><span class="n">end</span><span class="o">-</span><span class="mi">6</span><span class="o">:</span><span class="n">end</span><span class="p">)];</span></div><div class='line' id='LC392'>&nbsp;&nbsp;<span class="n">ptr</span><span class="o">=</span><span class="n">ptr</span><span class="o">+</span><span class="mi">1</span><span class="p">;</span></div><div class='line' id='LC393'><span class="n">end</span></div><div class='line' id='LC394'><span class="n">val</span> <span class="o">=</span> <span class="n">base2dec</span><span class="p">(</span><span class="n">binarystring</span><span class="p">,</span><span class="mi">2</span><span class="p">);</span></div><div class='line' id='LC395'><br/></div><div class='line' id='LC396'><br/></div><div class='line' id='LC397'><br/></div><div class='line' id='LC398'><br/></div><div class='line' id='LC399'><span class="o">%</span></div><div class='line' id='LC400'><span class="o">%</span> <span class="n">Read</span> <span class="n">first</span> <span class="mi">2</span> <span class="n">bytes</span> <span class="n">of</span> <span class="n">msg</span> <span class="n">and</span> </div><div class='line' id='LC401'><span class="o">%</span>  <span class="n">determine</span> <span class="n">the</span> <span class="n">type</span></div><div class='line' id='LC402'><span class="o">%</span>  <span class="p">(</span><span class="n">most</span> <span class="n">require</span> <span class="n">only</span> <span class="mi">1</span><span class="n">st</span> <span class="n">byte</span><span class="p">)</span></div><div class='line' id='LC403'><span class="o">%</span></div><div class='line' id='LC404'><span class="o">%</span> <span class="n">str</span> <span class="n">is</span> <span class="n">one</span> <span class="nl">of:</span></div><div class='line' id='LC405'><span class="o">%</span>  <span class="err">&#39;</span><span class="n">channel_mode</span><span class="err">&#39;</span></div><div class='line' id='LC406'><span class="o">%</span>  <span class="err">&#39;</span><span class="n">channel_voice</span><span class="err">&#39;</span></div><div class='line' id='LC407'><span class="o">%</span>  <span class="err">&#39;</span><span class="n">sysex</span><span class="err">&#39;</span></div><div class='line' id='LC408'><span class="o">%</span>  <span class="err">&#39;</span><span class="n">sys_realtime</span><span class="err">&#39;</span></div><div class='line' id='LC409'><span class="o">%</span></div><div class='line' id='LC410'><span class="n">function</span> <span class="n">str</span><span class="o">=</span><span class="n">midi_msg_type</span><span class="p">(</span><span class="n">B</span><span class="p">,</span><span class="n">nB</span><span class="p">)</span></div><div class='line' id='LC411'><br/></div><div class='line' id='LC412'><span class="n">Hn</span> <span class="o">=</span> <span class="n">bitshift</span><span class="p">(</span><span class="n">B</span><span class="p">,</span><span class="o">-</span><span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC413'><span class="n">Ln</span> <span class="o">=</span> <span class="n">bitand</span><span class="p">(</span><span class="n">B</span><span class="p">,</span><span class="mi">7</span><span class="p">);</span></div><div class='line' id='LC414'><br/></div><div class='line' id='LC415'><span class="o">%</span> <span class="o">----</span> <span class="n">channel</span> <span class="n">mode</span> <span class="nl">messages:</span></div><div class='line' id='LC416'><span class="o">%</span><span class="k">if</span> <span class="p">(</span><span class="n">Hn</span><span class="o">==</span><span class="mi">11</span> <span class="o">&amp;&amp;</span> <span class="n">nB</span><span class="o">&gt;=</span><span class="mi">120</span> <span class="o">&amp;&amp;</span> <span class="n">nB</span><span class="o">&lt;=</span><span class="mi">127</span><span class="p">)</span></div><div class='line' id='LC417'><span class="k">if</span> <span class="p">(</span><span class="n">Hn</span><span class="o">==</span><span class="mi">11</span> <span class="o">&amp;&amp;</span> <span class="n">nB</span><span class="o">&gt;=</span><span class="mi">122</span> <span class="o">&amp;&amp;</span> <span class="n">nB</span><span class="o">&lt;=</span><span class="mi">127</span><span class="p">)</span></div><div class='line' id='LC418'>&nbsp;&nbsp;<span class="n">str</span> <span class="o">=</span> <span class="err">&#39;</span><span class="n">channel_mode</span><span class="err">&#39;</span><span class="p">;</span></div><div class='line' id='LC419'><br/></div><div class='line' id='LC420'>&nbsp;&nbsp;<span class="o">%</span> <span class="o">----</span> <span class="n">channel</span> <span class="n">voice</span> <span class="nl">messages:</span></div><div class='line' id='LC421'><span class="n">elseif</span> <span class="p">(</span><span class="n">Hn</span><span class="o">&gt;=</span><span class="mi">8</span> <span class="o">&amp;&amp;</span> <span class="n">Hn</span><span class="o">&lt;=</span><span class="mi">14</span><span class="p">)</span></div><div class='line' id='LC422'>&nbsp;&nbsp;<span class="n">str</span> <span class="o">=</span> <span class="err">&#39;</span><span class="n">channel_voice</span><span class="err">&#39;</span><span class="p">;</span></div><div class='line' id='LC423'>&nbsp;&nbsp;</div><div class='line' id='LC424'>&nbsp;&nbsp;<span class="o">%</span>  <span class="o">----</span> <span class="n">sysex</span> <span class="nl">events:</span></div><div class='line' id='LC425'><span class="n">elseif</span> <span class="p">(</span><span class="n">Hn</span><span class="o">==</span><span class="mi">15</span> <span class="o">&amp;&amp;</span> <span class="n">Ln</span><span class="o">&gt;=</span><span class="mi">0</span> <span class="o">&amp;&amp;</span> <span class="n">Ln</span><span class="o">&lt;=</span><span class="mi">7</span><span class="p">)</span></div><div class='line' id='LC426'>&nbsp;&nbsp;<span class="n">str</span> <span class="o">=</span> <span class="err">&#39;</span><span class="n">sysex</span><span class="err">&#39;</span><span class="p">;</span></div><div class='line' id='LC427'><br/></div><div class='line' id='LC428'>&nbsp;&nbsp;<span class="o">%</span> <span class="n">system</span> <span class="n">real</span><span class="o">-</span><span class="n">time</span> <span class="n">messages</span></div><div class='line' id='LC429'><span class="n">elseif</span> <span class="p">(</span><span class="n">Hn</span><span class="o">==</span><span class="mi">15</span> <span class="o">&amp;&amp;</span> <span class="n">Ln</span><span class="o">&gt;=</span><span class="mi">8</span> <span class="o">&amp;&amp;</span> <span class="n">Ln</span><span class="o">&lt;=</span><span class="mi">15</span><span class="p">)</span></div><div class='line' id='LC430'>&nbsp;&nbsp;<span class="o">%</span> <span class="nl">UNSURE:</span> <span class="n">how</span> <span class="n">can</span> <span class="n">you</span> <span class="n">tell</span> <span class="n">between</span> <span class="mh">0xFF</span> <span class="n">system</span> <span class="n">real</span><span class="o">-</span><span class="n">time</span></div><div class='line' id='LC431'>&nbsp;&nbsp;<span class="o">%</span>   <span class="n">message</span> <span class="n">and</span> <span class="mh">0xFF</span> <span class="n">meta</span> <span class="n">event</span><span class="o">?</span></div><div class='line' id='LC432'>&nbsp;&nbsp;<span class="o">%</span>   <span class="p">(</span><span class="n">now</span><span class="p">,</span> <span class="n">it</span> <span class="n">will</span> <span class="n">always</span> <span class="n">be</span> <span class="n">processed</span> <span class="n">by</span> <span class="n">meta</span><span class="p">)</span></div><div class='line' id='LC433'>&nbsp;&nbsp;<span class="n">str</span> <span class="o">=</span> <span class="err">&#39;</span><span class="n">sys_realtime</span><span class="err">&#39;</span><span class="p">;</span></div><div class='line' id='LC434'>&nbsp;&nbsp;</div><div class='line' id='LC435'><span class="k">else</span></div><div class='line' id='LC436'>&nbsp;&nbsp;<span class="o">%</span> <span class="n">don</span><span class="err">&#39;</span><span class="n">t</span> <span class="n">think</span> <span class="n">it</span> <span class="n">can</span> <span class="n">get</span> <span class="n">here</span><span class="p">...</span></div><div class='line' id='LC437'>&nbsp;&nbsp;<span class="n">error</span><span class="p">(</span><span class="err">&#39;</span><span class="n">bad</span> <span class="n">midi</span> <span class="n">message</span><span class="err">&#39;</span><span class="p">);</span></div><div class='line' id='LC438'><span class="n">end</span></div><div class='line' id='LC439'><br/></div></pre></div>
              
            
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
          <li><a href="http://support.github.com?sso=_-D9qfwBNALVWtVhGCwVCzX3G3akBoO36XQ8M-kMER3mItaw2V5DpBTBMMTZiae4jkrSf1vZwGxAVJO6ST6a1vl-i5Y1miUNwpSryQ3cRvPQmqZYMUsfSiwOFQoXDcOpaE1YCRSt8hLF_IGlAB4I0-ejRusClizaWnvfztS_FTPpb5iNY8COlLirBEk9tfNMUokjq9pnYthc00XOhHEwz2V9QzJ20TaaSr480wNI7V2Ida8GOD0IRba10S5e8-bj">Support</a></li>
          <li><a href="https://github.com/training">Training</a></li>
          <li><a href="http://jobs.github.com">Job Board</a></li>
          <li><a href="http://shop.github.com">Shop</a></li>
          <li><a href="https://github.com/contact">Contact</a></li>
          <li><a href="http://develop.github.com">API</a></li>
          <li><a href="http://status.github.com">Status</a></li>
        </ul>
        <ul class="sosueme">
          <li class="main">&copy; 2011 <span id="_rrt" title="0.11289s from fe3.rs.github.com">GitHub</span> Inc. All rights reserved.</li>
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

