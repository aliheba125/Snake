.class public abstract Landroidx/appcompat/view/menu/kv0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/IInterface;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/appcompat/view/menu/kv0;->b:Ljava/lang/String;

    iput-object p1, p0, Landroidx/appcompat/view/menu/kv0;->c:Ljava/lang/Class;

    return-void
.end method

.method public static bridge synthetic a(Landroidx/appcompat/view/menu/kv0;)Landroid/os/IInterface;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/kv0;->a:Landroid/os/IInterface;

    return-object p0
.end method

.method public static bridge synthetic b(Landroidx/appcompat/view/menu/kv0;Landroid/os/IInterface;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/kv0;->a:Landroid/os/IInterface;

    return-void
.end method


# virtual methods
.method public c()Landroid/os/IInterface;
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/kv0;->a:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/kv0;->a:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/kv0;->a:Landroid/os/IInterface;

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->e()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->x(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/view/menu/go0;->z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/yu0;->t(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/go0$e;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    iput-object v1, p0, Landroidx/appcompat/view/menu/kv0;->a:Landroid/os/IInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/kv0;->a:Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->e()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$Stub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/appcompat/view/menu/go0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/kv0;->a:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/kv0$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/kv0$a;-><init>(Landroidx/appcompat/view/menu/kv0;)V

    invoke-interface {v0, v1, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/kv0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/kv0;->a:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/kv0;->b:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public final e()Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    iget-object v0, p0, Landroidx/appcompat/view/menu/kv0;->c:Ljava/lang/Class;

    return-object v0
.end method
