<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    <section class="form-row">
        <div class="form-group col-md6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" value="${filter?ifExists}" class="form-control mr-3" placeholder="Search by tag">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </section>

    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Add new Message
    </a>

    <section class="collapse <#if message??>show</#if>" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <input type="text" class="form-control mr-3 ${(textError??)?string('is-invalid', '')}"
                        value="<#if message??>${message.text}</#if>" name="text" placeholder="Enter messages">
                    <#if textError??>
                        <div class="invalid-feedback">
                            ${textError}
                        </div>
                    </#if>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control mr-3 ${(tagError??)?string('is-invalid', '')}"
                        value="<#if message??>${message.tag}</#if>" name="tag" placeholder="Tag">
                    <#if tagError??>
                        <div class="invalid-feedback">
                        ${tagError}
                        </div>
                    </#if>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input mr-3" id="customFile" name="file" placeholder="Select file">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Adding</button>
                </div>
            </form>
        </div>
    </section>

    <section class="card-columns">
        <#list messages as message>
        <div class="card my-3">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>

            <div class="card-footer text-muted">
                ${message.authorName}
            </div>
        </div>
        <#else>
            <div class="ml-2">
                No message
            </div>
        </#list>
    </section>
</@c.page>