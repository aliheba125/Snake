.class public abstract Landroidx/appcompat/view/menu/zt1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/os/UserManager;

.field public static volatile b:Z

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/zt1;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroidx/appcompat/view/menu/zt1;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/appcompat/view/menu/zt1;->c:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/zt1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/zt1;->d(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/zt1;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/appcompat/view/menu/zt1;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Landroidx/appcompat/view/menu/zt1;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-class v0, Landroidx/appcompat/view/menu/zt1;

    monitor-enter v0

    :try_start_0
    sget-boolean v2, Landroidx/appcompat/view/menu/zt1;->b:Z

    if-eqz v2, :cond_1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroidx/appcompat/view/menu/zt1;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sput-boolean p0, Landroidx/appcompat/view/menu/zt1;->b:Z

    :cond_2
    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-gt v1, v2, :cond_4

    sget-object v2, Landroidx/appcompat/view/menu/zt1;->a:Landroid/os/UserManager;

    if-nez v2, :cond_0

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    sput-object v2, Landroidx/appcompat/view/menu/zt1;->a:Landroid/os/UserManager;

    :cond_0
    sget-object v2, Landroidx/appcompat/view/menu/zt1;->a:Landroid/os/UserManager;

    if-nez v2, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v4

    :cond_3
    :goto_1
    move v4, v0

    goto :goto_2

    :catch_0
    sput-object v3, Landroidx/appcompat/view/menu/zt1;->a:Landroid/os/UserManager;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    sput-object v3, Landroidx/appcompat/view/menu/zt1;->a:Landroid/os/UserManager;

    :cond_5
    return v4
.end method
