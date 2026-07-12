.class public Landroidx/appcompat/view/menu/nv0;
.super Landroidx/appcompat/view/menu/kv0;
.source "SourceFile"


# static fields
.field public static final d:Landroidx/appcompat/view/menu/nv0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/nv0;

    const-class v1, Landroidx/appcompat/view/menu/j00;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/nv0;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroidx/appcompat/view/menu/nv0;->d:Landroidx/appcompat/view/menu/nv0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/kv0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static f()Landroidx/appcompat/view/menu/nv0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/nv0;->d:Landroidx/appcompat/view/menu/nv0;

    return-object v0
.end method

.method public static l()Z
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->f()Landroidx/appcompat/view/menu/nv0;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/nv0;->k(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "location_manager"

    return-object v0
.end method

.method public g(ILjava/lang/String;)Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/j00;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/j00;->p2(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public h(ILjava/lang/String;)Landroidx/appcompat/view/menu/n6;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/j00;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/j00;->h2(ILjava/lang/String;)Landroidx/appcompat/view/menu/n6;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public i(ILjava/lang/String;)Landroidx/appcompat/view/menu/p6;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/j00;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/j00;->B(ILjava/lang/String;)Landroidx/appcompat/view/menu/p6;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(ILjava/lang/String;)Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/j00;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/j00;->J0(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public k(ILjava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/j00;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/j00;->K0(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public m(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/j00;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/j00;->x(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public n(Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/j00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/j00;->k0(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
