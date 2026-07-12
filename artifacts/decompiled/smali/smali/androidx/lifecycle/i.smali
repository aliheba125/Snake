.class public Landroidx/lifecycle/i;
.super Landroidx/lifecycle/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/i$a;,
        Landroidx/lifecycle/i$b;
    }
.end annotation


# static fields
.field public static final k:Landroidx/lifecycle/i$a;


# instance fields
.field public final b:Z

.field public c:Landroidx/appcompat/view/menu/xq;

.field public d:Landroidx/lifecycle/f$b;

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Ljava/util/ArrayList;

.field public final j:Landroidx/appcompat/view/menu/ke0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/i$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/lifecycle/i;->k:Landroidx/lifecycle/i$a;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/a90;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/i;-><init>(Landroidx/appcompat/view/menu/a90;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/a90;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/f;-><init>()V

    iput-boolean p2, p0, Landroidx/lifecycle/i;->b:Z

    .line 2
    new-instance p2, Landroidx/appcompat/view/menu/xq;

    invoke-direct {p2}, Landroidx/appcompat/view/menu/xq;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    .line 3
    sget-object p2, Landroidx/lifecycle/f$b;->n:Landroidx/lifecycle/f$b;

    iput-object p2, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/i;->i:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/i;->e:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-static {p2}, Landroidx/appcompat/view/menu/ww0;->a(Ljava/lang/Object;)Landroidx/appcompat/view/menu/ke0;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/i;->j:Landroidx/appcompat/view/menu/ke0;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/z80;)V
    .locals 6

    const-string v0, "observer"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i;->f(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    sget-object v1, Landroidx/lifecycle/f$b;->m:Landroidx/lifecycle/f$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/f$b;->n:Landroidx/lifecycle/f$b;

    :goto_0
    new-instance v0, Landroidx/lifecycle/i$b;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/i$b;-><init>(Landroidx/appcompat/view/menu/z80;Landroidx/lifecycle/f$b;)V

    iget-object v1, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/menu/xq;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i$b;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/a90;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v2, p0, Landroidx/lifecycle/i;->f:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroidx/lifecycle/i;->g:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->e(Landroidx/appcompat/view/menu/z80;)Landroidx/lifecycle/f$b;

    move-result-object v4

    iget v5, p0, Landroidx/lifecycle/i;->f:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/i;->f:I

    :goto_3
    invoke-virtual {v0}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-object v3, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/xq;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/lifecycle/i;->l(Landroidx/lifecycle/f$b;)V

    sget-object v3, Landroidx/lifecycle/f$a;->Companion:Landroidx/lifecycle/f$a$a;

    invoke-virtual {v0}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/f$a$a;->b(Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$a;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/i$b;->a(Landroidx/appcompat/view/menu/a90;Landroidx/lifecycle/f$a;)V

    invoke-virtual {p0}, Landroidx/lifecycle/i;->k()V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->e(Landroidx/appcompat/view/menu/z80;)Landroidx/lifecycle/f$b;

    move-result-object v4

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no event up from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroidx/lifecycle/i;->m()V

    :cond_7
    iget p1, p0, Landroidx/lifecycle/i;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/i;->f:I

    return-void
.end method

.method public b()Landroidx/lifecycle/f$b;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    return-object v0
.end method

.method public c(Landroidx/appcompat/view/menu/z80;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i;->f(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/xq;->n(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Landroidx/appcompat/view/menu/a90;)V
    .locals 5

    iget-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gr0;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "observerMap.descendingIterator()"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/lifecycle/i;->h:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "next()"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/z80;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i$b;

    :goto_0
    invoke-virtual {v1}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v3

    iget-object v4, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/i;->h:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/xq;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/lifecycle/f$a;->Companion:Landroidx/lifecycle/f$a$a;

    invoke-virtual {v1}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/f$a$a;->a(Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/lifecycle/f$a;->e()Landroidx/lifecycle/f$b;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/lifecycle/i;->l(Landroidx/lifecycle/f$b;)V

    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/i$b;->a(Landroidx/appcompat/view/menu/a90;Landroidx/lifecycle/f$a;)V

    invoke-virtual {p0}, Landroidx/lifecycle/i;->k()V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no event down from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public final e(Landroidx/appcompat/view/menu/z80;)Landroidx/lifecycle/f$b;
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/xq;->p(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/i$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/lifecycle/i;->i:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/f$b;

    :cond_1
    sget-object v1, Landroidx/lifecycle/i;->k:Landroidx/lifecycle/i$a;

    iget-object v2, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    invoke-virtual {v1, v2, p1}, Landroidx/lifecycle/i$a;->a(Landroidx/lifecycle/f$b;Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$b;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroidx/lifecycle/i$a;->a(Landroidx/lifecycle/f$b;Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/lifecycle/i;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/h4;->f()Landroidx/appcompat/view/menu/h4;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h4;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be called on the main thread"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Landroidx/appcompat/view/menu/a90;)V
    .locals 5

    iget-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gr0;->g()Landroidx/appcompat/view/menu/gr0$d;

    move-result-object v0

    const-string v1, "observerMap.iteratorWithAdditions()"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/lifecycle/i;->h:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/z80;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i$b;

    :goto_0
    invoke-virtual {v1}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v3

    iget-object v4, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/i;->h:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/xq;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/lifecycle/i;->l(Landroidx/lifecycle/f$b;)V

    sget-object v3, Landroidx/lifecycle/f$a;->Companion:Landroidx/lifecycle/f$a$a;

    invoke-virtual {v1}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/f$a$a;->b(Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/i$b;->a(Landroidx/appcompat/view/menu/a90;Landroidx/lifecycle/f$a;)V

    invoke-virtual {p0}, Landroidx/lifecycle/i;->k()V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no event up from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public h(Landroidx/lifecycle/f$a;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/f$a;->e()Landroidx/lifecycle/f$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->j(Landroidx/lifecycle/f$b;)V

    return-void
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gr0;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gr0;->d()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/i$b;

    invoke-virtual {v0}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v0

    iget-object v2, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gr0;->h()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/i$b;

    invoke-virtual {v2}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final j(Landroidx/lifecycle/f$b;)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroidx/lifecycle/f$b;->n:Landroidx/lifecycle/f$b;

    if-ne v0, v1, :cond_2

    sget-object v0, Landroidx/lifecycle/f$b;->m:Landroidx/lifecycle/f$b;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no event down from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/lifecycle/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    iget-boolean p1, p0, Landroidx/lifecycle/i;->g:Z

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/lifecycle/i;->f:I

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/i;->g:Z

    invoke-virtual {p0}, Landroidx/lifecycle/i;->m()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/i;->g:Z

    iget-object p1, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    sget-object v0, Landroidx/lifecycle/f$b;->m:Landroidx/lifecycle/f$b;

    if-ne p1, v0, :cond_4

    new-instance p1, Landroidx/appcompat/view/menu/xq;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/xq;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    :cond_4
    return-void

    :cond_5
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/i;->h:Z

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final l(Landroidx/lifecycle/f$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/a90;

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/lifecycle/i;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iput-boolean v2, p0, Landroidx/lifecycle/i;->h:Z

    iget-object v1, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    iget-object v2, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gr0;->d()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/i$b;

    invoke-virtual {v2}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i;->d(Landroidx/appcompat/view/menu/a90;)V

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/i;->c:Landroidx/appcompat/view/menu/xq;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gr0;->h()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/lifecycle/i;->h:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/f$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i$b;

    invoke-virtual {v1}, Landroidx/lifecycle/i$b;->b()Landroidx/lifecycle/f$b;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i;->g(Landroidx/appcompat/view/menu/a90;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Landroidx/lifecycle/i;->h:Z

    iget-object v0, p0, Landroidx/lifecycle/i;->j:Landroidx/appcompat/view/menu/ke0;

    invoke-virtual {p0}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/f$b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/ke0;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
