.class public final Landroidx/appcompat/view/menu/pv;
.super Landroidx/appcompat/view/menu/y51;
.source "SourceFile"


# static fields
.field public static final k:Landroidx/lifecycle/r$b;


# instance fields
.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;

.field public final g:Z

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/pv$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pv$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/pv;->k:Landroidx/lifecycle/r$b;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y51;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pv;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pv;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pv;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/pv;->h:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/pv;->i:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/pv;->j:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/pv;->g:Z

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCleared called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/pv;->h:Z

    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/av;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/pv;->j:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/pv;->d:Ljava/util/HashMap;

    iget-object v2, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/pv;->d:Ljava/util/HashMap;

    iget-object v2, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating retained Fragments: Added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/av;Z)V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing non-config state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pv;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/appcompat/view/menu/pv;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/pv;

    iget-object v2, p0, Landroidx/appcompat/view/menu/pv;->d:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/appcompat/view/menu/pv;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/view/menu/pv;->e:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/appcompat/view/menu/pv;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/view/menu/pv;->f:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/appcompat/view/menu/pv;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing non-config state for saved state of Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/pv;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method public final g(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/pv;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/pv;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Landroidx/appcompat/view/menu/pv;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/pv;->f(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pv;->c()V

    iget-object p2, p0, Landroidx/appcompat/view/menu/pv;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/pv;->f:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/a61;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/a61;->a()V

    iget-object p2, p0, Landroidx/appcompat/view/menu/pv;->f:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public h(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pv;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/av;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/pv;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/appcompat/view/menu/pv;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/appcompat/view/menu/pv;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/pv;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/pv;->e:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/pv;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/pv;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/pv;->g:Z

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/pv;-><init>(Z)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/pv;->e:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public j()Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/view/menu/pv;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public k(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/a61;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/pv;->f:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/a61;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/a61;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/a61;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/pv;->f:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public l(Landroidx/appcompat/view/menu/av;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/pv;->j:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/pv;->d:Ljava/util/HashMap;

    iget-object v2, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating retained Fragments: Removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/pv;->j:Z

    return-void
.end method

.method public n(Landroidx/appcompat/view/menu/av;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pv;->d:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean p1, p0, Landroidx/appcompat/view/menu/pv;->g:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/pv;->h:Z

    return p1

    :cond_1
    iget-boolean p1, p0, Landroidx/appcompat/view/menu/pv;->i:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FragmentManagerViewModel{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} Fragments ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/pv;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ") Child Non Config ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/pv;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, ") ViewModelStores ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/pv;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
