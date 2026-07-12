.class public final Landroidx/appcompat/view/menu/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kh;
.implements Ljava/io/Serializable;


# instance fields
.field public final m:Landroidx/appcompat/view/menu/kh;

.field public final n:Landroidx/appcompat/view/menu/kh$b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/dd;->m:Landroidx/appcompat/view/menu/kh;

    iput-object p2, p0, Landroidx/appcompat/view/menu/dd;->n:Landroidx/appcompat/view/menu/kh$b;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/kh$b;)Z
    .locals 1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/kh$b;->getKey()Landroidx/appcompat/view/menu/kh$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dd;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Landroidx/appcompat/view/menu/dd;->n:Landroidx/appcompat/view/menu/kh$b;

    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/kh$b;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/dd;->m:Landroidx/appcompat/view/menu/kh;

    instance-of v1, v0, Landroidx/appcompat/view/menu/dd;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/view/menu/dd;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Landroidx/appcompat/view/menu/dd;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/view/menu/dd;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/dd;->g()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dd;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/dd;->f(Landroidx/appcompat/view/menu/dd;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final f(Landroidx/appcompat/view/menu/dd;)Z
    .locals 1

    :goto_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/dd;->n:Landroidx/appcompat/view/menu/kh$b;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/dd;->b(Landroidx/appcompat/view/menu/kh$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/dd;->m:Landroidx/appcompat/view/menu/kh;

    instance-of v0, p1, Landroidx/appcompat/view/menu/dd;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/view/menu/dd;

    goto :goto_0

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/view/menu/kh$b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/dd;->b(Landroidx/appcompat/view/menu/kh$b;)Z

    move-result p1

    return p1
.end method

.method public final g()I
    .locals 3

    const/4 v0, 0x2

    move-object v1, p0

    :goto_0
    iget-object v1, v1, Landroidx/appcompat/view/menu/dd;->m:Landroidx/appcompat/view/menu/kh;

    instance-of v2, v1, Landroidx/appcompat/view/menu/dd;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/appcompat/view/menu/dd;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/dd;->m:Landroidx/appcompat/view/menu/kh;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/dd;->n:Landroidx/appcompat/view/menu/kh$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/dd;->n:Landroidx/appcompat/view/menu/kh$b;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/kh$b;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/dd;->m:Landroidx/appcompat/view/menu/kh;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/dd;->m:Landroidx/appcompat/view/menu/kh;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/kh;->j(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dd;->m:Landroidx/appcompat/view/menu/kh;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/appcompat/view/menu/bo;->m:Landroidx/appcompat/view/menu/bo;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/dd;->n:Landroidx/appcompat/view/menu/kh$b;

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/appcompat/view/menu/dd;

    iget-object v1, p0, Landroidx/appcompat/view/menu/dd;->n:Landroidx/appcompat/view/menu/kh$b;

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/menu/dd;-><init>(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public o(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/kh$a;->a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;
    .locals 1

    const-string v0, "operation"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/dd;->m:Landroidx/appcompat/view/menu/kh;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/kh;->p(Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dd;->n:Landroidx/appcompat/view/menu/kh$b;

    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/tw;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ""

    sget-object v2, Landroidx/appcompat/view/menu/dd$a;->n:Landroidx/appcompat/view/menu/dd$a;

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/view/menu/dd;->p(Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
