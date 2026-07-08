.class public Landroidx/appcompat/view/menu/o4;
.super Landroidx/appcompat/view/menu/nu0;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public t:Landroidx/appcompat/view/menu/wa0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/nu0;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/nu0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/nu0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/nu0;-><init>(Landroidx/appcompat/view/menu/nu0;)V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o4;->n()Landroidx/appcompat/view/menu/wa0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/wa0;->l()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o4;->n()Landroidx/appcompat/view/menu/wa0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/wa0;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final n()Landroidx/appcompat/view/menu/wa0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o4;->t:Landroidx/appcompat/view/menu/wa0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/o4$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/o4$a;-><init>(Landroidx/appcompat/view/menu/o4;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/o4;->t:Landroidx/appcompat/view/menu/wa0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o4;->t:Landroidx/appcompat/view/menu/wa0;

    return-object v0
.end method

.method public o(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/wa0;->p(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/nu0;->o:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/nu0;->c(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/nu0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o4;->n()Landroidx/appcompat/view/menu/wa0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/wa0;->n()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
