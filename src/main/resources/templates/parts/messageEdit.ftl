<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Message Editor
</a>

<section class="collapse <#if message??>show</#if>" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control mr-3 ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.text}</#if>" name="text" placeholder="Enter messages" />
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="text" class="form-control mr-3 ${(tagError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.tag}</#if>" name="tag" placeholder="Tag" />
                <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" class="custom-file-input mr-3" id="customFile" name="file" placeholder="Select file" />
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Save message</button>
            </div>
        </form>
    </div>
</section>