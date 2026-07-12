.class public Landroidx/appcompat/view/menu/ov0;
.super Landroidx/appcompat/view/menu/kv0;
.source "SourceFile"


# static fields
.field public static final d:Landroidx/appcompat/view/menu/ov0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ov0;

    const-class v1, Landroidx/appcompat/view/menu/k00;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ov0;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroidx/appcompat/view/menu/ov0;->d:Landroidx/appcompat/view/menu/ov0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/kv0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static l()Landroidx/appcompat/view/menu/ov0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ov0;->d:Landroidx/appcompat/view/menu/ov0;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_manager"

    return-object v0
.end method

.method public f(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/k00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroidx/appcompat/view/menu/k00;->Y0(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public g(Landroid/app/NotificationChannel;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/k00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/k00;->a0(Landroid/app/NotificationChannel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public h(Landroid/app/NotificationChannelGroup;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/k00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/k00;->e0(Landroid/app/NotificationChannelGroup;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/k00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/k00;->p1(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/k00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/k00;->V(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public k(ILjava/lang/String;Landroid/app/Notification;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/k00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/appcompat/view/menu/k00;->R(ILjava/lang/String;Landroid/app/Notification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public m(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/k00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/k00;->V0(Ljava/lang/String;I)Landroid/app/NotificationChannel;

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

.method public n(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/k00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/k00;->H0(Ljava/lang/String;I)Ljava/util/List;

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

.method public o(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/k00;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/k00;->p(Ljava/lang/String;I)Ljava/util/List;

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
