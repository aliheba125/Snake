.class public Landroidx/appcompat/view/menu/y40;
.super Landroid/content/IIntentReceiver$Stub;
.source "SourceFile"


# static fields
.field public static final m:Ljava/util/Map;


# instance fields
.field public final l:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/y40;->m:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/IIntentReceiver;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y40;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static bridge synthetic h()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/y40;->m:Ljava/util/Map;

    return-object v0
.end method

.method public static j(Landroid/content/IIntentReceiver;)Landroid/content/IIntentReceiver;
    .locals 3

    instance-of v0, p0, Landroidx/appcompat/view/menu/y40;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/y40;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/y40;

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Landroidx/appcompat/view/menu/y40$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/y40$a;-><init>(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v1, Landroidx/appcompat/view/menu/y40;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/y40;-><init>(Landroid/content/IIntentReceiver;)V

    sget-object p0, Landroidx/appcompat/view/menu/y40;->m:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 8

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->H2()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/jl0;->a(Landroid/content/Intent;)Landroidx/appcompat/view/menu/jl0;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/jl0;->a:Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->H2()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, v0, Landroidx/appcompat/view/menu/jl0;->a:Landroid/content/Intent;

    :cond_0
    move-object v0, p1

    iget-object p1, p0, Landroidx/appcompat/view/menu/y40;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IIntentReceiver;

    if-eqz p1, :cond_1

    sget-object v7, Landroidx/appcompat/view/menu/k10;->b:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, p3

    move-object v3, p4

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
