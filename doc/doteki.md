

# Module doteki #
* [Function Index](#index)
* [Function Details](#functions)

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#compile-0">compile/0</a></td><td>
Compile the configuration of the current application and all loaded applications.</td></tr><tr><td valign="top"><a href="#compile-1">compile/1</a></td><td>
Compile the configuration of the given application/s.</td></tr><tr><td valign="top"><a href="#compile_file-2">compile_file/2</a></td><td>
Compile a configuration file and save the result in an other file.</td></tr><tr><td valign="top"><a href="#get_all_env-0">get_all_env/0</a></td><td>
Returns the configuration parameters and their values for the application of the calling process.</td></tr><tr><td valign="top"><a href="#get_all_env-1">get_all_env/1</a></td><td>
Returns the configuration parameters and their values for Application.</td></tr><tr><td valign="top"><a href="#get_as_atom-1">get_as_atom/1</a></td><td>
Return the result of <tt>get_env/1</tt> as atom.</td></tr><tr><td valign="top"><a href="#get_as_atom-2">get_as_atom/2</a></td><td>
Return the result of <tt>get_env/2</tt> as atom.</td></tr><tr><td valign="top"><a href="#get_as_atom-3">get_as_atom/3</a></td><td>
Return the result of <tt>get_env/3</tt> as atom.</td></tr><tr><td valign="top"><a href="#get_as_binary-1">get_as_binary/1</a></td><td>
Return the result of <tt>get_env/1</tt> as binary.</td></tr><tr><td valign="top"><a href="#get_as_binary-2">get_as_binary/2</a></td><td>
Return the result of <tt>get_env/2</tt> as binary.</td></tr><tr><td valign="top"><a href="#get_as_binary-3">get_as_binary/3</a></td><td>
Return the result of <tt>get_env/3</tt> as binary.</td></tr><tr><td valign="top"><a href="#get_as_float-1">get_as_float/1</a></td><td>
Return the result of <tt>get_env/1</tt> as float.</td></tr><tr><td valign="top"><a href="#get_as_float-2">get_as_float/2</a></td><td>
Return the result of <tt>get_env/2</tt> as float.</td></tr><tr><td valign="top"><a href="#get_as_float-3">get_as_float/3</a></td><td>
Return the result of <tt>get_env/3</tt> as float.</td></tr><tr><td valign="top"><a href="#get_as_integer-1">get_as_integer/1</a></td><td>
Return the result of <tt>get_env/1</tt> as integer.</td></tr><tr><td valign="top"><a href="#get_as_integer-2">get_as_integer/2</a></td><td>
Return the result of <tt>get_env/2</tt> as integer.</td></tr><tr><td valign="top"><a href="#get_as_integer-3">get_as_integer/3</a></td><td>
Return the result of <tt>get_env/3</tt> as integer.</td></tr><tr><td valign="top"><a href="#get_as_list-1">get_as_list/1</a></td><td>
Return the result of <tt>get_env/1</tt> as list.</td></tr><tr><td valign="top"><a href="#get_as_list-2">get_as_list/2</a></td><td>
Return the result of <tt>get_env/2</tt> as list.</td></tr><tr><td valign="top"><a href="#get_as_list-3">get_as_list/3</a></td><td>
Return the result of <tt>get_env/3</tt> as list.</td></tr><tr><td valign="top"><a href="#get_as_string-1">get_as_string/1</a></td><td>
Return the result of <tt>get_env/1</tt> as string.</td></tr><tr><td valign="top"><a href="#get_as_string-2">get_as_string/2</a></td><td>
Return the result of <tt>get_env/2</tt> as string.</td></tr><tr><td valign="top"><a href="#get_as_string-3">get_as_string/3</a></td><td>
Return the result of <tt>get_env/3</tt> as string.</td></tr><tr><td valign="top"><a href="#get_as_term-1">get_as_term/1</a></td><td>
Return the result of <tt>get_env/1</tt> as term.</td></tr><tr><td valign="top"><a href="#get_as_term-2">get_as_term/2</a></td><td>
Return the result of <tt>get_env/2</tt> as term.</td></tr><tr><td valign="top"><a href="#get_as_term-3">get_as_term/3</a></td><td>
Return the result of <tt>get_env/3</tt> as term.</td></tr><tr><td valign="top"><a href="#get_env-1">get_env/1</a></td><td>Equivalent to <a href="#get_env-2"><tt>get_env(Path, undefined)</tt></a>.</td></tr><tr><td valign="top"><a href="#get_env-2">get_env/2</a></td><td> 
Return the evironment value from the environment variable, or the configuration file, or 
the default value.</td></tr><tr><td valign="top"><a href="#get_env-3">get_env/3</a></td><td> 
Return the evironment value from the environment variable, or the configuration file, or 
the default value.</td></tr><tr><td valign="top"><a href="#reload_env-0">reload_env/0</a></td><td>
Reload the configuration file passed to the VM (<tt>-config</tt> option).</td></tr><tr><td valign="top"><a href="#set_env-2">set_env/2</a></td><td> 
Load a configuration for the given app with the given configuration.</td></tr><tr><td valign="top"><a href="#set_env-3">set_env/3</a></td><td>
Sets the value of configuration parameter <tt>Key</tt> for <tt>App</tt>.</td></tr><tr><td valign="top"><a href="#set_env_from_config-1">set_env_from_config/1</a></td><td> 
Load an application configuration from the given configuration.</td></tr><tr><td valign="top"><a href="#set_env_from_file-1">set_env_from_file/1</a></td><td> 
Load an application configuration from the given config file.</td></tr><tr><td valign="top"><a href="#test_fun-1">test_fun/1</a></td><td></td></tr><tr><td valign="top"><a href="#unset_env-1">unset_env/1</a></td><td>
Remove the configuration parameters and its value for the <tt>Application</tt> or the
given <tt>Path</tt></td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="compile-0"></a>

### compile/0 ###

`compile() -> any()`

Compile the configuration of the current application and all loaded applications.

<a name="compile-1"></a>

### compile/1 ###

`compile(Apps) -> any()`

Compile the configuration of the given application/s

<a name="compile_file-2"></a>

### compile_file/2 ###

<pre><code>
compile_file(In::<a href="file.md#type-filename">file:filename()</a>, Out::<a href="file.md#type-filename">file:filename()</a>) -&gt; ok | {error, term()}
</code></pre>
<br />

Compile a configuration file and save the result in an other file

<a name="get_all_env-0"></a>

### get_all_env/0 ###

<pre><code>
get_all_env() -&gt; [term()]
</code></pre>
<br />

Returns the configuration parameters and their values for the application of the calling process.

<a name="get_all_env-1"></a>

### get_all_env/1 ###

<pre><code>
get_all_env(Application::atom()) -&gt; [term()]
</code></pre>
<br />

Returns the configuration parameters and their values for Application.

<a name="get_as_atom-1"></a>

### get_as_atom/1 ###

`get_as_atom(Path) -> any()`

Return the result of `get_env/1` as atom

<a name="get_as_atom-2"></a>

### get_as_atom/2 ###

`get_as_atom(A, B) -> any()`

Return the result of `get_env/2` as atom

<a name="get_as_atom-3"></a>

### get_as_atom/3 ###

`get_as_atom(A, B, C) -> any()`

Return the result of `get_env/3` as atom

<a name="get_as_binary-1"></a>

### get_as_binary/1 ###

`get_as_binary(Path) -> any()`

Return the result of `get_env/1` as binary

<a name="get_as_binary-2"></a>

### get_as_binary/2 ###

`get_as_binary(A, B) -> any()`

Return the result of `get_env/2` as binary

<a name="get_as_binary-3"></a>

### get_as_binary/3 ###

`get_as_binary(A, B, C) -> any()`

Return the result of `get_env/3` as binary

<a name="get_as_float-1"></a>

### get_as_float/1 ###

`get_as_float(Path) -> any()`

Return the result of `get_env/1` as float

<a name="get_as_float-2"></a>

### get_as_float/2 ###

`get_as_float(A, B) -> any()`

Return the result of `get_env/2` as float

<a name="get_as_float-3"></a>

### get_as_float/3 ###

`get_as_float(A, B, C) -> any()`

Return the result of `get_env/3` as float

<a name="get_as_integer-1"></a>

### get_as_integer/1 ###

`get_as_integer(Path) -> any()`

Return the result of `get_env/1` as integer

<a name="get_as_integer-2"></a>

### get_as_integer/2 ###

`get_as_integer(A, B) -> any()`

Return the result of `get_env/2` as integer

<a name="get_as_integer-3"></a>

### get_as_integer/3 ###

`get_as_integer(A, B, C) -> any()`

Return the result of `get_env/3` as integer

<a name="get_as_list-1"></a>

### get_as_list/1 ###

`get_as_list(Path) -> any()`

Return the result of `get_env/1` as list

<a name="get_as_list-2"></a>

### get_as_list/2 ###

`get_as_list(A, B) -> any()`

Return the result of `get_env/2` as list

<a name="get_as_list-3"></a>

### get_as_list/3 ###

`get_as_list(A, B, C) -> any()`

Return the result of `get_env/3` as list

<a name="get_as_string-1"></a>

### get_as_string/1 ###

`get_as_string(Path) -> any()`

Return the result of `get_env/1` as string

<a name="get_as_string-2"></a>

### get_as_string/2 ###

`get_as_string(A, B) -> any()`

Return the result of `get_env/2` as string

<a name="get_as_string-3"></a>

### get_as_string/3 ###

`get_as_string(A, B, C) -> any()`

Return the result of `get_env/3` as string

<a name="get_as_term-1"></a>

### get_as_term/1 ###

`get_as_term(Path) -> any()`

Return the result of `get_env/1` as term

<a name="get_as_term-2"></a>

### get_as_term/2 ###

`get_as_term(A, B) -> any()`

Return the result of `get_env/2` as term

<a name="get_as_term-3"></a>

### get_as_term/3 ###

`get_as_term(A, B, C) -> any()`

Return the result of `get_env/3` as term

<a name="get_env-1"></a>

### get_env/1 ###

`get_env(Path) -> any()`

Equivalent to [`get_env(Path, undefined)`](#get_env-2).

<a name="get_env-2"></a>

### get_env/2 ###

<pre><code>
get_env(App::atom() | [atom()] | [[atom()]], Key::atom() | [atom()] | term()) -&gt; undefined | term()
</code></pre>
<br />


Return the evironment value from the environment variable, or the configuration file, or 
the default value.

Example:

If you call `doteki:get_env(app, key)`, id the `APP_KEY` environment
variable is set, _doteki_ will return it value. Else it will search for an existing
value for the `key` for the `app` in the configuration.

Calling `doteki:get_env([app, keyone, keytwo], "default")` return :

* the value of the environment variable `APP_KEYONE_KEYTWO` of it exists

* else the value for `keytwo` in the dict returned by `keyone` for the `app`

* else `"default"`


<a name="get_env-3"></a>

### get_env/3 ###

<pre><code>
get_env(App::atom(), Key::atom() | [atom()], Default::term()) -&gt; undefined | term()
</code></pre>
<br />


Return the evironment value from the environment variable, or the configuration file, or 
the default value.

Example:

If you call `doteki:get_env(app, key)`, id the `APP_KEY` environment
variable is set, _doteki_ will return it value. Else it will search for an existing
value for the `key` for the `app` in the configuration.

Calling `doteki:get_env([app, keyone, keytwo], "default")` return :

* the value  of the environment variable `APP_KEYONE_KEYTWO` of it exists

* else the value for `keytwo` in the dict returned by `keyone` for the `app`

* else `"default"`


<a name="reload_env-0"></a>

### reload_env/0 ###

<pre><code>
reload_env() -&gt; ok | {error, any()}
</code></pre>
<br />

Reload the configuration file passed to the VM (`-config` option)

<a name="set_env-2"></a>

### set_env/2 ###

<pre><code>
set_env(App::atom(), Rest::[term()]) -&gt; ok | {error, any()}
</code></pre>
<br />


Load a configuration for the given app with the given configuration

Example :

```erlang

 undefined = application:get_env(test, key).
 doteki:set_env(test, [{key, "value"}]).
 {ok, Value} = application:get_env(test, key).
```

WARNING :

Call this function __after__ loading your application. This is not mandatory but the
environment defined in the app file won't be loaded if an other env was loaded before.

<a name="set_env-3"></a>

### set_env/3 ###

<pre><code>
set_env(App::atom(), Key::atom(), Value::term()) -&gt; ok
</code></pre>
<br />

Sets the value of configuration parameter `Key` for `App`.

Example :

```erlang

 undefined = application:get_env(test, key).
 doteki:set_env(test, key, "value").
 {ok, Value} = application:get_env(test, key).
```

WARNING :

Call this function __after__ loading your application. This is not mandatory but the
environment defined in the app file won't be loaded if an other env was loaded before.

<a name="set_env_from_config-1"></a>

### set_env_from_config/1 ###

<pre><code>
set_env_from_config(Rest::[term()]) -&gt; ok | {error, any()}
</code></pre>
<br />


Load an application configuration from the given configuration

Example :

```erlang

 undefined = doteki:get_env(test, key).
 doteki:set_env_from_file([{test, [{key, "value"}]}]).
 {ok, Value} = doteki:get_env(test, key).
```

WARNING :

Call this function __after__ loading your application. This is not mandatory but the
environment defined in the app file won't be loaded if an other env was loaded before.

<a name="set_env_from_file-1"></a>

### set_env_from_file/1 ###

`set_env_from_file(File) -> any()`


Load an application configuration from the given config file

Example :

```erlang

 undefined = doteki:get_env(test, key).
 doteki:set_env_from_file("path/to/sys.config").
 {ok, Value} = doteki:get_env(test, key).
```

WARNING :

Call this function __after__ loading your application. This is not mandatory but the
environment defined in the app file won't be loaded if an other env was loaded before.

<a name="test_fun-1"></a>

### test_fun/1 ###

`test_fun(X) -> any()`

<a name="unset_env-1"></a>

### unset_env/1 ###

<pre><code>
unset_env(App::[atom()] | atom()) -&gt; ok
</code></pre>
<br />

Remove the configuration parameters and its value for the `Application` or the
given `Path`

