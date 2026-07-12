.class public Landroidx/appcompat/view/menu/ys0;
.super Landroid/app/IServiceConnection$Stub;
.source "SourceFile"


# static fields
.field public static final n:Ljava/util/Map;


# instance fields
.field public final l:Landroid/app/IServiceConnection;

.field public final m:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ys0;->n:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/IServiceConnection$Stub;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ys0;->l:Landroid/app/IServiceConnection;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ys0;->m:Landroid/content/ComponentName;

    return-void
.end method

.method public static bridge synthetic h()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ys0;->n:Ljava/util/Map;

    return-object v0
.end method

.method public static k(Landroid/app/IServiceConnection;Landroid/content/Intent;)Landroid/app/IServiceConnection;
    .locals 3

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/ys0;->n:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ys0;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Landroidx/appcompat/view/menu/ys0$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/ys0$a;-><init>(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v1, Landroidx/appcompat/view/menu/ys0;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/ys0;-><init>(Landroid/app/IServiceConnection;Landroid/content/ComponentName;)V

    sget-object p0, Landroidx/appcompat/view/menu/ys0;->n:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static u2(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/ys0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ys0;->n:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/ys0;

    return-object p0
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ys0;->j(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public j(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/u20;->b:Landroidx/appcompat/view/menu/go0$d;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ys0;->l:Landroid/app/IServiceConnection;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ys0;->m:Landroid/content/ComponentName;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {v1, p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/appcompat/view/menu/ys0;->l:Landroid/app/IServiceConnection;

    invoke-interface {p3, p1, p2}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method
