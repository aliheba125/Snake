.class public final Landroidx/appcompat/view/menu/i42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/j52;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/w32;

.field public final b:Landroidx/appcompat/view/menu/l72;

.field public final c:Z

.field public final d:Landroidx/appcompat/view/menu/vz1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/l72;Landroidx/appcompat/view/menu/vz1;Landroidx/appcompat/view/menu/w32;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/i42;->b:Landroidx/appcompat/view/menu/l72;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/vz1;->d(Landroidx/appcompat/view/menu/w32;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i42;->c:Z

    iput-object p2, p0, Landroidx/appcompat/view/menu/i42;->d:Landroidx/appcompat/view/menu/vz1;

    iput-object p3, p0, Landroidx/appcompat/view/menu/i42;->a:Landroidx/appcompat/view/menu/w32;

    return-void
.end method

.method public static j(Landroidx/appcompat/view/menu/l72;Landroidx/appcompat/view/menu/vz1;Landroidx/appcompat/view/menu/w32;)Landroidx/appcompat/view/menu/i42;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/i42;

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/view/menu/i42;-><init>(Landroidx/appcompat/view/menu/l72;Landroidx/appcompat/view/menu/vz1;Landroidx/appcompat/view/menu/w32;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->a:Landroidx/appcompat/view/menu/w32;

    instance-of v1, v0, Landroidx/appcompat/view/menu/q02;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->y()Landroidx/appcompat/view/menu/q02;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Landroidx/appcompat/view/menu/w32;->d()Landroidx/appcompat/view/menu/c42;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/c42;->k()Landroidx/appcompat/view/menu/w32;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->b:Landroidx/appcompat/view/menu/l72;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/l72;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l72;->e(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/i42;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/i42;->d:Landroidx/appcompat/view/menu/vz1;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/vz1;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/e02;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e02;->a()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->d:Landroidx/appcompat/view/menu/vz1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/vz1;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/e02;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e02;->n()Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->b:Landroidx/appcompat/view/menu/l72;

    invoke-static {v0, p1, p2}, Landroidx/appcompat/view/menu/m52;->n(Landroidx/appcompat/view/menu/l72;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i42;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->d:Landroidx/appcompat/view/menu/vz1;

    invoke-static {v0, p1, p2}, Landroidx/appcompat/view/menu/m52;->l(Landroidx/appcompat/view/menu/vz1;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->b:Landroidx/appcompat/view/menu/l72;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/l72;->l(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->d:Landroidx/appcompat/view/menu/vz1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/vz1;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->b:Landroidx/appcompat/view/menu/l72;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/l72;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/i42;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/i42;->d:Landroidx/appcompat/view/menu/vz1;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/vz1;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/e02;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e02;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final g(Ljava/lang/Object;Landroidx/appcompat/view/menu/d92;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->d:Landroidx/appcompat/view/menu/vz1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/vz1;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/e02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e02;->l()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->b:Landroidx/appcompat/view/menu/l72;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/l72;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/l72;->d(Ljava/lang/Object;Landroidx/appcompat/view/menu/d92;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->b:Landroidx/appcompat/view/menu/l72;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/l72;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/i42;->b:Landroidx/appcompat/view/menu/l72;

    invoke-virtual {v1, p2}, Landroidx/appcompat/view/menu/l72;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i42;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->d:Landroidx/appcompat/view/menu/vz1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/vz1;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/e02;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i42;->d:Landroidx/appcompat/view/menu/vz1;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/vz1;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/e02;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/e02;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final i(Ljava/lang/Object;[BIILandroidx/appcompat/view/menu/ox1;)V
    .locals 0

    move-object p2, p1

    check-cast p2, Landroidx/appcompat/view/menu/q02;

    iget-object p3, p2, Landroidx/appcompat/view/menu/q02;->zzb:Landroidx/appcompat/view/menu/d72;

    invoke-static {}, Landroidx/appcompat/view/menu/d72;->k()Landroidx/appcompat/view/menu/d72;

    move-result-object p4

    if-ne p3, p4, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/d72;->l()Landroidx/appcompat/view/menu/d72;

    move-result-object p3

    iput-object p3, p2, Landroidx/appcompat/view/menu/q02;->zzb:Landroidx/appcompat/view/menu/d72;

    :cond_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method
