.class public final Landroidx/appcompat/view/menu/av1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/qu1;


# static fields
.field public static c:Landroidx/appcompat/view/menu/av1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/av1;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/view/menu/av1;->b:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/av1;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Landroidx/appcompat/view/menu/ev1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/ev1;-><init>(Landroidx/appcompat/view/menu/av1;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/av1;->b:Landroid/database/ContentObserver;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Landroidx/appcompat/view/menu/ot1;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroidx/appcompat/view/menu/av1;
    .locals 2

    const-class v0, Landroidx/appcompat/view/menu/av1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/av1;->c:Landroidx/appcompat/view/menu/av1;

    if-nez v1, :cond_1

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {p0, v1}, Landroidx/appcompat/view/menu/xh0;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/av1;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/av1;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/av1;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/av1;-><init>()V

    :goto_0
    sput-object v1, Landroidx/appcompat/view/menu/av1;->c:Landroidx/appcompat/view/menu/av1;

    :cond_1
    sget-object p0, Landroidx/appcompat/view/menu/av1;->c:Landroidx/appcompat/view/menu/av1;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v0, Landroidx/appcompat/view/menu/av1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/av1;->c:Landroidx/appcompat/view/menu/av1;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/appcompat/view/menu/av1;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroidx/appcompat/view/menu/av1;->b:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/av1;->c:Landroidx/appcompat/view/menu/av1;

    iget-object v2, v2, Landroidx/appcompat/view/menu/av1;->b:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Landroidx/appcompat/view/menu/av1;->c:Landroidx/appcompat/view/menu/av1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/appcompat/view/menu/ot1;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/av1;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/appcompat/view/menu/zt1;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroidx/appcompat/view/menu/yu1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/yu1;-><init>(Landroidx/appcompat/view/menu/av1;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/appcompat/view/menu/wu1;->a(Landroidx/appcompat/view/menu/uu1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to read GServices for: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final synthetic h(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/av1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
