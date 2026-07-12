.class public abstract Landroidx/appcompat/view/menu/ob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Landroidx/appcompat/view/menu/j10;


# instance fields
.field public final l:Ljava/util/Map;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ob;->l:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ob;->h()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ob;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ob;->m:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/od0;->a(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ob;->n:Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ob;->o:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ob;->m:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ob;->j()V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ob;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/md0;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ob;->l:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/md0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ob;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs f(Landroidx/appcompat/view/menu/md0;[Ljava/lang/String;)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    iget-object v3, p0, Landroidx/appcompat/view/menu/ob;->l:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ob;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public abstract i(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ob;->l:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/md0;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/md0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ob;->m:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Landroidx/appcompat/view/menu/md0;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ob;->m:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Landroidx/appcompat/view/menu/md0;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/md0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    :try_start_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ob;->m:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ob;->o:Z

    return-void
.end method
