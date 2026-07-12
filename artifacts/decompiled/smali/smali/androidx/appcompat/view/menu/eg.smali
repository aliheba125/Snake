.class public abstract Landroidx/appcompat/view/menu/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/ContentProviderClient;
    .locals 4

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/eg;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/eg;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1, p5}, Landroidx/appcompat/view/menu/eg;->b(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/eg;->d(Landroid/content/ContentProviderClient;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p0}, Landroidx/appcompat/view/menu/eg;->d(Landroid/content/ContentProviderClient;)V

    throw p1
.end method

.method public static d(Landroid/content/ContentProviderClient;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
