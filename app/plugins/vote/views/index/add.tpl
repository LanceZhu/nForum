    	<div class="mbar">
        	<ul>
                <li><a href="<{$base}>/vote?c=new">最新投票</a></li>
                <li><a href="<{$base}>/vote?c=hot">热门投票</a></li>
                <li><a href="<{$base}>/vote?c=all">全部投票</a></li>
<{if $islogin}>
                <li><a href="<{$base}>/vote?c=list&u=<{$id}>">我的投票</a></li>
                <li><a href="<{$base}>/vote?c=join">我参与的投票</a></li>
                <li class="selected"><a href="<{$base}>/vote/add">新投票</a></li>
<{/if}>
<{if $isAdmin}>
                <li><a href="<{$base}>/vote?c=del">已删除的投票</a></li>
<{/if}>
            </ul>					
        </div>
		<div class="b-content vote-main">
			<div class="vote-title">新投票</div>
			<form id="f_vote" action="<{$base}>/vote/ajax_add.json" method="post">
			<dl id="vote_head" class="vote-add">
				<dt>标题:</dt>
				<dd><input type="text" class="input-text" name="subject"/><span style="color:red">&nbsp;*</span></dd>
				<dt>描述:</dt>
				<dd class="a-desc"><textarea name="desc"></textarea></dd>
			</dl>
			<dl id="vote_item" class="vote-add">
				<dt>选项:</dt>
				<dd><input type="text" class="input-text" name="%name%"/><samp class="ico-pos-w-remove"></samp></dd>
			</dl>
            <div class="clearfix" ></div>
			<dl id="vote_opt" class="vote-add">
				<dt>&nbsp;</dt>
				<dd class="item-more"><samp class="ico-pos-tag-off"></samp>添加选项(最多20个)</dd>
				<dt>截止日期:</dt>
				<dd ><input type="text" name="end" class="input-text"/></dd>
				<dt>选项类型:</dt>
				<dd><input type="radio" name="type" value="0" checked onclick="$('#v_limit').attr('disabled',1)"/>单选&nbsp;&nbsp;<input type="radio" name="type" value="1" onclick="$('#v_limit').attr('disabled',0)"/>多选</dd>
				<dt>多选限制:</dt>
				<dd><select id="v_limit" disabled="1" name="limit"><option value="0">无限制</option><{html_options options=$limit}></select></dd>
			</dl>
			<div class="vote-submit">
				<input type="submit" class="button" value="提交" />
				<input type="reset" class="button" value="重置" />
			</div>
			</form>
		</div>
