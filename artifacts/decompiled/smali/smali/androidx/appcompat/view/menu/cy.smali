.class public abstract Landroidx/appcompat/view/menu/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Ljava/lang/String;

.field public static volatile b:Ljava/lang/String;

.field public static volatile c:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic a(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/cy;->e(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Landroidx/appcompat/view/menu/cy;->a:Ljava/lang/String;

    sput-object p1, Landroidx/appcompat/view/menu/cy;->b:Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "malformed JWT"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    const-class v0, Landroidx/appcompat/view/menu/cy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/cy;->c:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Landroidx/appcompat/view/menu/cy$a;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/cy$a;-><init>()V

    sput-object v1, Landroidx/appcompat/view/menu/cy;->c:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.snake.INTERNAL_OAUTH_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.snake.INTERNAL_OAUTH_CANCELLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_1

    sget-object v2, Landroidx/appcompat/view/menu/cy;->c:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v2, Landroidx/appcompat/view/menu/cy;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static e(Ljava/lang/String;I)V
    .locals 10

    if-eqz p0, :cond_c

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_b

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    move-object v5, v4

    :goto_1
    const-string v6, "id_token"

    if-ge v3, v0, :cond_4

    aget-object v7, p0, v3

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v7

    goto :goto_2

    :cond_2
    const-string v6, "access_token"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v5, v7

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_a

    invoke-static {v4}, Landroidx/appcompat/view/menu/cy;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "email"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sub"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, v0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_5

    invoke-virtual {v7, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Landroidx/appcompat/view/menu/av0;->p()Landroidx/appcompat/view/menu/av0;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v2, v9, v7, p1}, Landroidx/appcompat/view/menu/av0;->j(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v7

    invoke-virtual {v8, v2, v6, v4, p1}, Landroidx/appcompat/view/menu/av0;->L(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v5, :cond_6

    const-string v4, "oauth2:https://www.googleapis.com/auth/userinfo.email"

    invoke-virtual {v8, v2, v4, v5, p1}, Landroidx/appcompat/view/menu/av0;->L(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {v8, v2, v1, p0, p1}, Landroidx/appcompat/view/menu/av0;->O(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google account added: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " userId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " added="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, p1}, Landroidx/appcompat/view/menu/av0;->u(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "post-add query userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u2192 "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_8

    const-string p0, "null"

    goto :goto_3

    :cond_8
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "id_token missing email claim"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no id_token in redirect"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no params in redirect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null redirect url"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(I)V
    .locals 6

    sget-object v0, Landroidx/appcompat/view/menu/cy;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/cy;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLogin userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/appcompat/view/menu/cy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " redirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/appcompat/view/menu/cy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/cy;->d(Landroid/content/Context;)V

    invoke-static {}, Landroidx/appcompat/view/menu/cy;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/cy;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://accounts.google.com/o/oauth2/v2/auth"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "response_type"

    const-string v5, "id_token token"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "client_id"

    sget-object v5, Landroidx/appcompat/view/menu/cy;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "redirect_uri"

    sget-object v5, Landroidx/appcompat/view/menu/cy;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "scope"

    const-string v5, "openid email profile"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "nonce"

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "state"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "prompt"

    const-string v3, "select_account"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.snake.helper.InternalWebBrowser"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "_userId"

    invoke-virtual {v2, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "_oauth_redirect_prefix"

    sget-object v1, Landroidx/appcompat/view/menu/cy;->b:Ljava/lang/String;

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleLoginHelper not configured. Call SnakeEngine.configureGoogleLogin(clientId, redirectUri) first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
