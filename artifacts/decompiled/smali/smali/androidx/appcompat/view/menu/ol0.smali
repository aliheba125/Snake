.class public abstract Landroidx/appcompat/view/menu/ol0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/content/Context;ZLandroidx/appcompat/view/menu/bz0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/ol0;->d(Landroid/content/Context;ZLandroidx/appcompat/view/menu/bz0;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/view/menu/pl0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/ol0;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, p0, v1}, Landroidx/appcompat/view/menu/ol0;->e(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)Landroidx/appcompat/view/menu/zy0;

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;ZLandroidx/appcompat/view/menu/bz0;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/view/menu/ol0;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error configuring notification delegate for package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/bz0;->e(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {p0, v1}, Landroidx/appcompat/view/menu/pl0;->c(Landroid/content/Context;Z)V

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "com.google.android.gms"

    if-eqz p1, :cond_1

    :try_start_2
    invoke-static {p0, v1}, Landroidx/appcompat/view/menu/ll0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroidx/appcompat/view/menu/ml0;->a(Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/ll0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/bz0;->e(Ljava/lang/Object;)Z

    return-void

    :goto_1
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/bz0;->e(Ljava/lang/Object;)Z

    throw p0
.end method

.method public static e(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/qi0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz0;->e(Ljava/lang/Object;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/bz0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bz0;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/nl0;

    invoke-direct {v1, p1, p2, v0}, Landroidx/appcompat/view/menu/nl0;-><init>(Landroid/content/Context;ZLandroidx/appcompat/view/menu/bz0;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bz0;->a()Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "firebase_messaging_notification_delegation_enabled"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x1

    return p0
.end method
