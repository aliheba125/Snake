.class public final Landroidx/appcompat/view/menu/lh1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/fr1;

.field public b:Landroidx/appcompat/view/menu/pw1;

.field public c:Landroidx/appcompat/view/menu/cf1;

.field public final d:Landroidx/appcompat/view/menu/ue1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/view/menu/fr1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/fr1;-><init>()V

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/lh1;-><init>(Landroidx/appcompat/view/menu/fr1;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/fr1;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/lh1;->a:Landroidx/appcompat/view/menu/fr1;

    .line 3
    iget-object v0, p1, Landroidx/appcompat/view/menu/fr1;->b:Landroidx/appcompat/view/menu/pw1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pw1;->d()Landroidx/appcompat/view/menu/pw1;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/lh1;->b:Landroidx/appcompat/view/menu/pw1;

    .line 4
    new-instance v0, Landroidx/appcompat/view/menu/cf1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/cf1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/lh1;->c:Landroidx/appcompat/view/menu/cf1;

    .line 5
    new-instance v0, Landroidx/appcompat/view/menu/ue1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ue1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/lh1;->d:Landroidx/appcompat/view/menu/ue1;

    .line 6
    new-instance v0, Landroidx/appcompat/view/menu/ee1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ee1;-><init>(Landroidx/appcompat/view/menu/lh1;)V

    const-string v1, "internal.registerCallback"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/view/menu/fr1;->b(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 7
    new-instance v0, Landroidx/appcompat/view/menu/zm1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/zm1;-><init>(Landroidx/appcompat/view/menu/lh1;)V

    const-string v1, "internal.eventLogger"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/view/menu/fr1;->b(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/cf1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lh1;->c:Landroidx/appcompat/view/menu/cf1;

    return-object v0
.end method

.method public final b(Landroidx/appcompat/view/menu/jt1;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lh1;->a:Landroidx/appcompat/view/menu/fr1;

    iget-object v0, v0, Landroidx/appcompat/view/menu/fr1;->b:Landroidx/appcompat/view/menu/pw1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pw1;->d()Landroidx/appcompat/view/menu/pw1;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/lh1;->b:Landroidx/appcompat/view/menu/pw1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/jt1;->I()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/lh1;->a:Landroidx/appcompat/view/menu/fr1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/lh1;->b:Landroidx/appcompat/view/menu/pw1;

    const/4 v3, 0x0

    new-array v3, v3, [Landroidx/appcompat/view/menu/kt1;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/kt1;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/fr1;->a(Landroidx/appcompat/view/menu/pw1;[Landroidx/appcompat/view/menu/kt1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/view/menu/cg1;

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/jt1;->G()Landroidx/appcompat/view/menu/ht1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ht1;->I()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/it1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/it1;->I()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/it1;->H()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/kt1;

    iget-object v3, p0, Landroidx/appcompat/view/menu/lh1;->a:Landroidx/appcompat/view/menu/fr1;

    iget-object v4, p0, Landroidx/appcompat/view/menu/lh1;->b:Landroidx/appcompat/view/menu/pw1;

    filled-new-array {v2}, [Landroidx/appcompat/view/menu/kt1;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/view/menu/fr1;->a(Landroidx/appcompat/view/menu/pw1;[Landroidx/appcompat/view/menu/kt1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/view/menu/og1;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/appcompat/view/menu/lh1;->b:Landroidx/appcompat/view/menu/pw1;

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/pw1;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/pw1;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v3

    instance-of v4, v3, Landroidx/appcompat/view/menu/gg1;

    if-eqz v4, :cond_3

    check-cast v3, Landroidx/appcompat/view/menu/gg1;

    :goto_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Landroidx/appcompat/view/menu/lh1;->b:Landroidx/appcompat/view/menu/pw1;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/view/menu/gg1;->a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rule function is undefined: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid function name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid rule definition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Program loading failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    new-instance v0, Landroidx/appcompat/view/menu/pk1;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/pk1;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lh1;->a:Landroidx/appcompat/view/menu/fr1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/fr1;->b(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public final d(Landroidx/appcompat/view/menu/hf1;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lh1;->c:Landroidx/appcompat/view/menu/cf1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/cf1;->b(Landroidx/appcompat/view/menu/hf1;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/lh1;->a:Landroidx/appcompat/view/menu/fr1;

    iget-object p1, p1, Landroidx/appcompat/view/menu/fr1;->c:Landroidx/appcompat/view/menu/pw1;

    const-string v0, "runtime.counter"

    new-instance v1, Landroidx/appcompat/view/menu/yf1;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/pw1;->h(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/lh1;->d:Landroidx/appcompat/view/menu/ue1;

    iget-object v0, p0, Landroidx/appcompat/view/menu/lh1;->b:Landroidx/appcompat/view/menu/pw1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pw1;->d()Landroidx/appcompat/view/menu/pw1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/lh1;->c:Landroidx/appcompat/view/menu/cf1;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/ue1;->b(Landroidx/appcompat/view/menu/pw1;Landroidx/appcompat/view/menu/cf1;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lh1;->g()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lh1;->f()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :goto_1
    new-instance v0, Landroidx/appcompat/view/menu/pk1;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/pk1;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final synthetic e()Landroidx/appcompat/view/menu/gg1;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/lf2;

    iget-object v1, p0, Landroidx/appcompat/view/menu/lh1;->d:Landroidx/appcompat/view/menu/ue1;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/lf2;-><init>(Landroidx/appcompat/view/menu/ue1;)V

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lh1;->c:Landroidx/appcompat/view/menu/cf1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cf1;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/lh1;->c:Landroidx/appcompat/view/menu/cf1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cf1;->d()Landroidx/appcompat/view/menu/hf1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/lh1;->c:Landroidx/appcompat/view/menu/cf1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cf1;->a()Landroidx/appcompat/view/menu/hf1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/hf1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
