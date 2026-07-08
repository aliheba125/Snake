.class public abstract Landroidx/appcompat/view/menu/zc0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/appcompat/view/menu/zc0;->r(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/zc0;->B(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static B(Landroid/os/Bundle;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "google.c.a.e"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a()Z
    .locals 6

    const-string v0, "delivery_metrics_exported_to_big_query_enabled"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/or;->k()Landroidx/appcompat/view/menu/or;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroidx/appcompat/view/menu/or;->k()Landroidx/appcompat/view/menu/or;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/or;->j()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.firebase.messaging"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "export_to_big_query"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    :cond_1
    return v1
.end method

.method public static b(Landroidx/appcompat/view/menu/ad0$b;Landroid/content/Intent;)Landroidx/appcompat/view/menu/ad0;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/ad0;->p()Landroidx/appcompat/view/menu/ad0$a;

    move-result-object v0

    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->p(Landroid/os/Bundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ad0$a;->m(I)Landroidx/appcompat/view/menu/ad0$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/ad0$a;->e(Landroidx/appcompat/view/menu/ad0$b;)Landroidx/appcompat/view/menu/ad0$a;

    move-result-object p0

    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->f(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ad0$a;->f(Ljava/lang/String;)Landroidx/appcompat/view/menu/ad0$a;

    move-result-object p0

    invoke-static {}, Landroidx/appcompat/view/menu/zc0;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ad0$a;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/ad0$a;

    move-result-object p0

    sget-object v0, Landroidx/appcompat/view/menu/ad0$d;->o:Landroidx/appcompat/view/menu/ad0$d;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ad0$a;->k(Landroidx/appcompat/view/menu/ad0$d;)Landroidx/appcompat/view/menu/ad0$a;

    move-result-object p0

    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->k(Landroid/os/Bundle;)Landroidx/appcompat/view/menu/ad0$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ad0$a;->h(Landroidx/appcompat/view/menu/ad0$c;)Landroidx/appcompat/view/menu/ad0$a;

    move-result-object p0

    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->h(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ad0$a;->g(Ljava/lang/String;)Landroidx/appcompat/view/menu/ad0$a;

    :cond_2
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->o(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ad0$a;->l(Ljava/lang/String;)Landroidx/appcompat/view/menu/ad0$a;

    :cond_3
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->c(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ad0$a;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/ad0$a;

    :cond_4
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->i(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ad0$a;->b(Ljava/lang/String;)Landroidx/appcompat/view/menu/ad0$a;

    :cond_5
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->e(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ad0$a;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ad0$a;

    :cond_6
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->n(Landroid/os/Bundle;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_7

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/ad0$a;->j(J)Landroidx/appcompat/view/menu/ad0$a;

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ad0$a;->a()Landroidx/appcompat/view/menu/ad0;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "collapse_key"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "google.c.a.c_id"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "google.c.a.c_l"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "google.to"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/or;->k()Landroidx/appcompat/view/menu/or;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/as;->r(Landroidx/appcompat/view/menu/or;)Landroidx/appcompat/view/menu/as;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as;->a()Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz0;->a(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static g(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "google.c.a.m_c"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "google.message_id"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "message_id"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static i(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "google.c.a.m_l"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "google.c.a.ts"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/os/Bundle;)Landroidx/appcompat/view/menu/ad0$c;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/mf0;->t(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/appcompat/view/menu/ad0$c;->q:Landroidx/appcompat/view/menu/ad0$c;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/appcompat/view/menu/ad0$c;->o:Landroidx/appcompat/view/menu/ad0$c;

    :goto_0
    return-object p0
.end method

.method public static l(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/mf0;->t(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "display"

    goto :goto_0

    :cond_0
    const-string p0, "data"

    :goto_0
    return-object p0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/or;->k()Landroidx/appcompat/view/menu/or;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/or;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n(Landroid/os/Bundle;)J
    .locals 4

    const-string v0, "google.c.sender.id"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/or;->k()Landroidx/appcompat/view/menu/or;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/or;->m()Landroidx/appcompat/view/menu/os;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/os;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/or;->m()Landroidx/appcompat/view/menu/os;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/os;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-wide v0

    :cond_2
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_3

    return-wide v1

    :cond_3
    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-wide v1

    :cond_4
    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    return-wide v0

    :catch_2
    return-wide v1
.end method

.method public static o(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "from"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "/topics/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static p(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "google.ttl"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid TTL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static q(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "google.c.a.udt"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static r(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static s(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "_nd"

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/zc0;->x(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static t(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "_nf"

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/zc0;->x(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static u(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/zc0;->y(Landroid/os/Bundle;)V

    const-string v0, "_no"

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/zc0;->x(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static v(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/view/menu/zc0;->A(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_nr"

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/zc0;->x(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    invoke-static {p0}, Landroidx/appcompat/view/menu/zc0;->z(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/appcompat/view/menu/ad0$b;->o:Landroidx/appcompat/view/menu/ad0$b;

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->q()Landroidx/appcompat/view/menu/e21;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroidx/appcompat/view/menu/zc0;->w(Landroidx/appcompat/view/menu/ad0$b;Landroid/content/Intent;Landroidx/appcompat/view/menu/e21;)V

    :cond_1
    return-void
.end method

.method public static w(Landroidx/appcompat/view/menu/ad0$b;Landroid/content/Intent;Landroidx/appcompat/view/menu/e21;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/zc0;->b(Landroidx/appcompat/view/menu/ad0$b;Landroid/content/Intent;)Landroidx/appcompat/view/menu/ad0;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v0, "google.product_id"

    const v1, 0x6ab2d1f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/hk0;->b(Ljava/lang/Integer;)Landroidx/appcompat/view/menu/hk0;

    move-result-object p1

    const-string v0, "FCM_CLIENT_EVENT_LOGGING"

    const-class v1, Landroidx/appcompat/view/menu/bd0;

    const-string v2, "proto"

    invoke-static {v2}, Landroidx/appcompat/view/menu/lo;->b(Ljava/lang/String;)Landroidx/appcompat/view/menu/lo;

    move-result-object v2

    new-instance v3, Landroidx/appcompat/view/menu/yc0;

    invoke-direct {v3}, Landroidx/appcompat/view/menu/yc0;-><init>()V

    invoke-interface {p2, v0, v1, v2, v3}, Landroidx/appcompat/view/menu/e21;->a(Ljava/lang/String;Ljava/lang/Class;Landroidx/appcompat/view/menu/lo;Landroidx/appcompat/view/menu/r11;)Landroidx/appcompat/view/menu/b21;

    move-result-object p2

    invoke-static {}, Landroidx/appcompat/view/menu/bd0;->b()Landroidx/appcompat/view/menu/bd0$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/bd0$a;->b(Landroidx/appcompat/view/menu/ad0;)Landroidx/appcompat/view/menu/bd0$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bd0$a;->a()Landroidx/appcompat/view/menu/bd0;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/wo;->e(Ljava/lang/Object;Landroidx/appcompat/view/menu/hk0;)Landroidx/appcompat/view/menu/wo;

    move-result-object p0

    invoke-interface {p2, p0}, Landroidx/appcompat/view/menu/b21;->a(Landroidx/appcompat/view/menu/wo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static x(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/or;->k()Landroidx/appcompat/view/menu/or;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->d(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "_nmid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->e(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "_nmn"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->i(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->g(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "message_channel"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->o(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "_nt"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->j(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_1
    const-string v2, "_nmt"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->q(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_2
    const-string v2, "_ndt"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_7
    invoke-static {p1}, Landroidx/appcompat/view/menu/zc0;->l(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_nr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "_nf"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string v1, "_nmc"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string p1, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging to scion event="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " scionPayload="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-static {}, Landroidx/appcompat/view/menu/or;->k()Landroidx/appcompat/view/menu/or;

    move-result-object p1

    const-class v1, Landroidx/appcompat/view/menu/a2;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/or;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/a2;

    if-eqz p1, :cond_b

    const-string v1, "fcm"

    invoke-interface {p1, v1, p0, v0}, Landroidx/appcompat/view/menu/a2;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :catch_2
    :cond_b
    return-void
.end method

.method public static y(Landroid/os/Bundle;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "google.c.a.tc"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "FirebaseMessaging"

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/or;->k()Landroidx/appcompat/view/menu/or;

    move-result-object v0

    const-class v3, Landroidx/appcompat/view/menu/a2;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/or;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/a2;

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    if-eqz v0, :cond_2

    const-string v1, "google.c.a.c_id"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_ln"

    const-string v2, "fcm"

    invoke-interface {v0, v2, v1, p0}, Landroidx/appcompat/view/menu/a2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "source"

    const-string v4, "Firebase"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "medium"

    const-string v4, "notification"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "campaign"

    invoke-virtual {v1, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "_cmp"

    invoke-interface {v0, v2, p0, v1}, Landroidx/appcompat/view/menu/a2;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static z(Landroid/content/Intent;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/appcompat/view/menu/zc0;->r(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/zc0;->a()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
