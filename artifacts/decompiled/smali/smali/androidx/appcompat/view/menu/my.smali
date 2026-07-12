.class public Landroidx/appcompat/view/menu/my;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/j10;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public l:Landroid/os/Handler$Callback;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/my;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/my;->e()Landroid/os/Handler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/my;->e()Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/my;->l:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/my;->l:Landroid/os/Handler$Callback;

    :cond_1
    sget-object v0, Landroidx/appcompat/view/menu/ny;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/my;->d()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 3

    :try_start_0
    sget-object v0, Landroidx/appcompat/view/menu/e1;->d:Landroidx/appcompat/view/menu/go0$e;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/reflect/Proxy;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/appcompat/view/menu/pz;

    invoke-direct {v2, v0}, Landroidx/appcompat/view/menu/pz;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/pz;->k(Z)V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ob;->b()V

    sget-object v0, Landroidx/appcompat/view/menu/e1;->c:Landroidx/appcompat/view/menu/go0$e;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/e1;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/e1$a;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ob;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final d()Landroid/os/Handler;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/t1;->g:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final e()Landroid/os/Handler$Callback;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/ny;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/my;->d()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/bc;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/h80;->a:Landroidx/appcompat/view/menu/go0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/go0;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroidx/appcompat/view/menu/t1$c;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ServiceInfo;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->F2()I

    move-result v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/kl0;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->F2()I

    move-result v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/kl0;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v3

    invoke-virtual {p1, v2, v0, v1, v3}, Landroidx/appcompat/view/menu/dv0;->E(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 8

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/my;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/appcompat/view/menu/h80;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    sget-object v3, Landroidx/appcompat/view/menu/bc;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    goto :goto_1

    :cond_2
    sget-object p1, Landroidx/appcompat/view/menu/t1$a;->d:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    sget-object p1, Landroidx/appcompat/view/menu/t1$a;->e:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    :goto_1
    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-static {v2}, Landroidx/appcompat/view/menu/il0;->a(Landroid/content/Intent;)Landroidx/appcompat/view/menu/il0;

    move-result-object v3

    iget-object v4, v3, Landroidx/appcompat/view/menu/il0;->b:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_a

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->D2()Landroidx/appcompat/view/menu/p3;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_5

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object p1

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget v7, v3, Landroidx/appcompat/view/menu/il0;->a:I

    invoke-virtual {p1, v1, v5, v7}, Landroidx/appcompat/view/menu/dv0;->y(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object p1

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v5, v3, Landroidx/appcompat/view/menu/il0;->a:I

    invoke-virtual {p1, v1, v5}, Landroidx/appcompat/view/menu/qv0;->l(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, v3, Landroidx/appcompat/view/menu/il0;->b:Landroid/content/pm/ActivityInfo;

    iget-object v5, v3, Landroidx/appcompat/view/menu/il0;->d:Ljava/lang/String;

    iget v3, v3, Landroidx/appcompat/view/menu/il0;->a:I

    invoke-static {v2, p1, v1, v5, v3}, Landroidx/appcompat/view/menu/il0;->b(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroidx/appcompat/view/menu/h80;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroidx/appcompat/view/menu/h80;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, v0, v4}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object p1, Landroidx/appcompat/view/menu/t1$a;->d:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroidx/appcompat/view/menu/t1$a;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, v0, v4}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return v6

    :cond_5
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/jv0;->S2()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object p1

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/jv0;->x2(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_6
    sget-object v2, Landroidx/appcompat/view/menu/qz;->b:Landroidx/appcompat/view/menu/go0$d;

    sget-object v5, Landroidx/appcompat/view/menu/l1;->c:Landroidx/appcompat/view/menu/go0$e;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v7}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p1, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object v5

    iget-object v7, v3, Landroidx/appcompat/view/menu/il0;->d:Ljava/lang/String;

    invoke-virtual {v5, v2, p1, v7}, Landroidx/appcompat/view/menu/dv0;->r(ILandroid/os/IBinder;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-eq v2, v5, :cond_9

    const/16 v5, 0x1e

    if-ne v2, v5, :cond_7

    sget v2, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v2, v6, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Landroidx/appcompat/view/menu/h80;->c:Landroidx/appcompat/view/menu/go0$b;

    iget-object v2, v3, Landroidx/appcompat/view/menu/il0;->c:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroidx/appcompat/view/menu/h80;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, v0, v4}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    sget-object p1, Landroidx/appcompat/view/menu/t1$a;->d:Landroidx/appcompat/view/menu/go0$b;

    iget-object v2, v3, Landroidx/appcompat/view/menu/il0;->c:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroidx/appcompat/view/menu/t1$a;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1, v0, v4}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    :goto_3
    sget-object v0, Landroidx/appcompat/view/menu/t1;->n:Landroidx/appcompat/view/menu/go0$d;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/t1$a;->d:Landroidx/appcompat/view/menu/go0$b;

    iget-object v2, v3, Landroidx/appcompat/view/menu/il0;->c:Landroid/content/Intent;

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/appcompat/view/menu/t1$a;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p1, v4}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/appcompat/view/menu/t1$a;->g:Landroidx/appcompat/view/menu/go0$b;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/jv0;->L2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/my;->c()V

    :cond_a
    :goto_4
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/my;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v3, Landroidx/appcompat/view/menu/t1$d;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/my;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/my;->d()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/my;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    :cond_0
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v3, Landroidx/appcompat/view/menu/t1$d;->d:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/my;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/my;->d()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Landroidx/appcompat/view/menu/t1$d;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/my;->g(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/my;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return p1

    :cond_2
    :try_start_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/my;->l:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/my;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    :catchall_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/my;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    return v2
.end method
