.class public abstract Landroidx/appcompat/view/menu/mv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/mv$h;,
        Landroidx/appcompat/view/menu/mv$i;,
        Landroidx/appcompat/view/menu/mv$j;,
        Landroidx/appcompat/view/menu/mv$g;
    }
.end annotation


# static fields
.field public static Q:Z = false

.field public static R:Z = true


# instance fields
.field public A:Landroidx/appcompat/view/menu/ev;

.field public B:Landroidx/appcompat/view/menu/ev;

.field public C:Landroidx/appcompat/view/menu/hw0;

.field public D:Landroidx/appcompat/view/menu/hw0;

.field public E:Ljava/util/ArrayDeque;

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Ljava/util/ArrayList;

.field public L:Ljava/util/ArrayList;

.field public M:Ljava/util/ArrayList;

.field public N:Landroidx/appcompat/view/menu/pv;

.field public O:Landroidx/appcompat/view/menu/wv$c;

.field public P:Ljava/lang/Runnable;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Landroidx/appcompat/view/menu/uv;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/appcompat/view/menu/gv;

.field public g:Landroidx/appcompat/view/menu/cg0;

.field public h:Landroidx/appcompat/view/menu/n7;

.field public i:Z

.field public final j:Landroidx/appcompat/view/menu/bg0;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final l:Ljava/util/Map;

.field public final m:Ljava/util/Map;

.field public final n:Ljava/util/Map;

.field public o:Ljava/util/ArrayList;

.field public final p:Landroidx/appcompat/view/menu/hv;

.field public final q:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final r:Landroidx/appcompat/view/menu/pf;

.field public final s:Landroidx/appcompat/view/menu/pf;

.field public final t:Landroidx/appcompat/view/menu/pf;

.field public final u:Landroidx/appcompat/view/menu/pf;

.field public final v:Landroidx/appcompat/view/menu/vc0;

.field public w:I

.field public x:Landroidx/appcompat/view/menu/dv;

.field public y:Landroidx/appcompat/view/menu/av;

.field public z:Landroidx/appcompat/view/menu/av;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->a:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/view/menu/uv;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/uv;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/view/menu/gv;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/gv;-><init>(Landroidx/appcompat/view/menu/mv;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->f:Landroidx/appcompat/view/menu/gv;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mv;->i:Z

    new-instance v2, Landroidx/appcompat/view/menu/mv$a;

    invoke-direct {v2, p0, v1}, Landroidx/appcompat/view/menu/mv$a;-><init>(Landroidx/appcompat/view/menu/mv;Z)V

    iput-object v2, p0, Landroidx/appcompat/view/menu/mv;->j:Landroidx/appcompat/view/menu/bg0;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->l:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->m:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->n:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->o:Ljava/util/ArrayList;

    new-instance v1, Landroidx/appcompat/view/menu/hv;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/hv;-><init>(Landroidx/appcompat/view/menu/mv;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->p:Landroidx/appcompat/view/menu/hv;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/appcompat/view/menu/iv;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/iv;-><init>(Landroidx/appcompat/view/menu/mv;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->r:Landroidx/appcompat/view/menu/pf;

    new-instance v1, Landroidx/appcompat/view/menu/jv;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/jv;-><init>(Landroidx/appcompat/view/menu/mv;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->s:Landroidx/appcompat/view/menu/pf;

    new-instance v1, Landroidx/appcompat/view/menu/kv;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/kv;-><init>(Landroidx/appcompat/view/menu/mv;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->t:Landroidx/appcompat/view/menu/pf;

    new-instance v1, Landroidx/appcompat/view/menu/lv;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/lv;-><init>(Landroidx/appcompat/view/menu/mv;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->u:Landroidx/appcompat/view/menu/pf;

    new-instance v1, Landroidx/appcompat/view/menu/mv$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/mv$b;-><init>(Landroidx/appcompat/view/menu/mv;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->v:Landroidx/appcompat/view/menu/vc0;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/view/menu/mv;->w:I

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->A:Landroidx/appcompat/view/menu/ev;

    new-instance v1, Landroidx/appcompat/view/menu/mv$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/mv$c;-><init>(Landroidx/appcompat/view/menu/mv;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->B:Landroidx/appcompat/view/menu/ev;

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->C:Landroidx/appcompat/view/menu/hw0;

    new-instance v0, Landroidx/appcompat/view/menu/mv$d;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/mv$d;-><init>(Landroidx/appcompat/view/menu/mv;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->D:Landroidx/appcompat/view/menu/hw0;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->E:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/appcompat/view/menu/mv$e;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/mv$e;-><init>(Landroidx/appcompat/view/menu/mv;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->P:Ljava/lang/Runnable;

    return-void
.end method

.method public static S(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/n7;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/n7;->o(I)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/n7;->t()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/n7;->o(I)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/n7;->s()V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static W0(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1001

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1004

    const/16 v1, 0x2005

    if-eq p0, v1, :cond_2

    const/16 v2, 0x1003

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method public static Z(Landroid/view/View;)Landroidx/appcompat/view/menu/mv;
    .locals 4

    invoke-static {p0}, Landroidx/appcompat/view/menu/mv;->a0(Landroid/view/View;)Landroidx/appcompat/view/menu/av;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->T()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->p()Landroidx/appcompat/view/menu/mv;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " that owns View "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has already been destroyed. Nested fragments should always use the child FragmentManager."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not within a subclass of FragmentActivity."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/mv;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->E0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static a0(Landroid/view/View;)Landroidx/appcompat/view/menu/av;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Landroidx/appcompat/view/menu/mv;->p0(Landroid/view/View;)Landroidx/appcompat/view/menu/av;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/mv;Landroidx/appcompat/view/menu/ci0;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->G0(Landroidx/appcompat/view/menu/ci0;)V

    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/mv;Landroidx/appcompat/view/menu/de0;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->F0(Landroidx/appcompat/view/menu/de0;)V

    return-void
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/mv;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->D0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/mv;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->N()V

    return-void
.end method

.method public static p0(Landroid/view/View;)Landroidx/appcompat/view/menu/av;
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/nm0;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/appcompat/view/menu/av;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/av;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v0(I)Z
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/mv;->Q:Z

    if-nez v0, :cond_1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public A(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/av;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->F0()V

    if-eqz p1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/mv;->A(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public A0(Landroidx/appcompat/view/menu/av;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mv;->m0()Landroidx/appcompat/view/menu/av;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/av;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->A0(Landroidx/appcompat/view/menu/av;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/av;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->U()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/av;->k0(Z)V

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mv;->B()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public B0(I)Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/mv;->w:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Landroidx/appcompat/view/menu/mv;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/av;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/av;->G0(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public C0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->G:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final D(Landroidx/appcompat/view/menu/av;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->V(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/av;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->J0()V

    :cond_0
    return-void
.end method

.method public final synthetic D0(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/mv;->v(Landroid/content/res/Configuration;Z)V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->J(I)V

    return-void
.end method

.method public final synthetic E0(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->A(Z)V

    :cond_0
    return-void
.end method

.method public F(Landroid/view/Menu;)Z
    .locals 5

    iget v0, p0, Landroidx/appcompat/view/menu/mv;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/av;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/mv;->z0(Landroidx/appcompat/view/menu/av;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/av;->I0(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final synthetic F0(Landroidx/appcompat/view/menu/de0;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->x0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public G()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->e1()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->z:Landroidx/appcompat/view/menu/av;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->D(Landroidx/appcompat/view/menu/av;)V

    return-void
.end method

.method public final synthetic G0(Landroidx/appcompat/view/menu/ci0;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->x0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public H()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->G:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->H:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/pv;->m(Z)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->J(I)V

    return-void
.end method

.method public H0(IZ)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    iget p2, p0, Landroidx/appcompat/view/menu/mv;->w:I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/appcompat/view/menu/mv;->w:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/uv;->r()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->d1()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->G:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->H:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/pv;->m(Z)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->J(I)V

    return-void
.end method

.method public I0()V
    .locals 0

    return-void
.end method

.method public final J(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->b:Z

    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/uv;->d(I)V

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/view/menu/mv;->H0(IZ)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->q()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/gw0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gw0;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mv;->b:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->Q(Z)Z

    return-void

    :goto_1
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mv;->b:Z

    throw p1
.end method

.method public J0(Landroidx/fragment/app/FragmentContainerView;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/tv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v2

    iget v3, v2, Landroidx/appcompat/view/menu/av;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    iput-object p1, v2, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/tv;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public K()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->H:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/pv;->m(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->J(I)V

    return-void
.end method

.method public K0(Landroidx/appcompat/view/menu/tv;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/av;->I:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/mv;->b:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mv;->J:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/av;->I:Z

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/tv;->m()V

    :cond_1
    return-void
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->J(I)V

    return-void
.end method

.method public L0(IIZ)V
    .locals 2

    if-ltz p1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/mv$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/appcompat/view/menu/mv$i;-><init>(Landroidx/appcompat/view/menu/mv;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, p3}, Landroidx/appcompat/view/menu/mv;->O(Landroidx/appcompat/view/menu/mv$h;Z)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad id: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final M()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->J:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->J:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->d1()V

    :cond_0
    return-void
.end method

.method public M0()Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroidx/appcompat/view/menu/mv;->O0(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final N()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->q()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/gw0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gw0;->q()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public N0(II)Z
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/mv;->O0(Ljava/lang/String;II)Z

    move-result p1

    return p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public O(Landroidx/appcompat/view/menu/mv$h;Z)V
    .locals 1

    if-nez p2, :cond_1

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/mv;->I:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->a:Ljava/util/ArrayList;

    monitor-enter p1

    if-eqz p2, :cond_2

    :try_start_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Activity has been destroyed"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final O0(Ljava/lang/String;II)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->Q(Z)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->P(Z)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->z:Landroidx/appcompat/view/menu/av;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->p()Landroidx/appcompat/view/menu/mv;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mv;->M0()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/mv;->K:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/appcompat/view/menu/mv;->L:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/mv;->P0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->b:Z

    :try_start_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/mv;->K:Ljava/util/ArrayList;

    iget-object p3, p0, Landroidx/appcompat/view/menu/mv;->L:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/view/menu/mv;->T0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->o()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->o()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->e1()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->M()V

    iget-object p2, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/uv;->b()V

    return p1
.end method

.method public final P(Z)V
    .locals 1

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/mv;->b:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/mv;->I:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p5, v0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    move p5, v0

    goto :goto_0

    :cond_0
    move p5, v1

    :goto_0
    invoke-virtual {p0, p3, p4, p5}, Landroidx/appcompat/view/menu/mv;->W(Ljava/lang/String;IZ)I

    move-result p3

    if-gez p3, :cond_1

    return v1

    :cond_1
    iget-object p4, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v0

    :goto_1
    if-lt p4, p3, :cond_2

    iget-object p5, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/appcompat/view/menu/n7;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public Q(Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->P(Z)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->K:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->L:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/mv;->d0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mv;->b:Z

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->K:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->L:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/mv;->T0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->o()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->o()V

    throw p1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->e1()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->M()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv;->b()V

    return p1
.end method

.method public Q0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/n7;

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    iget-object v0, v0, Landroidx/appcompat/view/menu/xv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/xv$a;

    iget-object v1, v1, Landroidx/appcompat/view/menu/xv$a;->b:Landroidx/appcompat/view/menu/av;

    if-eqz v1, :cond_0

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/av;->m:Z

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/view/menu/mv;->P0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public R(Landroidx/appcompat/view/menu/mv$h;Z)V
    .locals 1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/mv;->P(Z)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/mv;->K:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->L:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroidx/appcompat/view/menu/mv$h;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mv;->b:Z

    :try_start_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->K:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/appcompat/view/menu/mv;->L:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/mv;->T0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->o()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->o()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->e1()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->M()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/uv;->b()V

    return-void
.end method

.method public R0()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/mv$j;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/mv$j;-><init>(Landroidx/appcompat/view/menu/mv;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/mv;->O(Landroidx/appcompat/view/menu/mv$h;Z)V

    return-void
.end method

.method public S0(Landroidx/appcompat/view/menu/av;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/appcompat/view/menu/av;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->V()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroidx/appcompat/view/menu/av;->A:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/uv;->s(Landroidx/appcompat/view/menu/av;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->w0(Landroidx/appcompat/view/menu/av;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mv;->F:Z

    :cond_2
    iput-boolean v1, p1, Landroidx/appcompat/view/menu/av;->l:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->b1(Landroidx/appcompat/view/menu/av;)V

    :cond_3
    return-void
.end method

.method public final T(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 8

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/n7;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/xv;->r:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->M:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mv;->M:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->M:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/uv;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->m0()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    const/4 v2, 0x0

    move v3, p3

    move v4, v2

    :goto_1
    const/4 v5, 0x1

    if-ge v3, p4, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/n7;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroidx/appcompat/view/menu/mv;->M:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v1}, Landroidx/appcompat/view/menu/n7;->u(Ljava/util/ArrayList;Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/av;

    move-result-object v1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Landroidx/appcompat/view/menu/mv;->M:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v1}, Landroidx/appcompat/view/menu/n7;->x(Ljava/util/ArrayList;Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/av;

    move-result-object v1

    :goto_2
    if-nez v4, :cond_3

    iget-boolean v4, v6, Landroidx/appcompat/view/menu/xv;->i:Z

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    move v4, v2

    goto :goto_4

    :cond_3
    :goto_3
    move v4, v5

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->M:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v0, :cond_7

    iget v0, p0, Landroidx/appcompat/view/menu/mv;->w:I

    if-lt v0, v5, :cond_7

    move v0, p3

    :goto_5
    if-ge v0, p4, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/n7;

    iget-object v1, v1, Landroidx/appcompat/view/menu/xv;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/xv$a;

    iget-object v2, v2, Landroidx/appcompat/view/menu/xv$a;->b:Landroidx/appcompat/view/menu/av;

    if-eqz v2, :cond_5

    iget-object v3, v2, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/mv;->s(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/tv;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/uv;->p(Landroidx/appcompat/view/menu/tv;)V

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    invoke-static {p1, p2, p3, p4}, Landroidx/appcompat/view/menu/mv;->S(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v0, p4, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v4, :cond_c

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/n7;

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/mv;->c0(Landroidx/appcompat/view/menu/n7;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_8
    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    if-nez v2, :cond_c

    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_8

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/av;

    throw v6

    :cond_a
    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_9

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/av;

    throw v6

    :cond_c
    move v1, p3

    :goto_a
    if-ge v1, p4, :cond_11

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/n7;

    if-eqz v0, :cond_e

    iget-object v3, v2, Landroidx/appcompat/view/menu/xv;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_b
    if-ltz v3, :cond_10

    iget-object v6, v2, Landroidx/appcompat/view/menu/xv;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/xv$a;

    iget-object v6, v6, Landroidx/appcompat/view/menu/xv$a;->b:Landroidx/appcompat/view/menu/av;

    if-eqz v6, :cond_d

    invoke-virtual {p0, v6}, Landroidx/appcompat/view/menu/mv;->s(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/tv;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/tv;->m()V

    :cond_d
    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_e
    iget-object v2, v2, Landroidx/appcompat/view/menu/xv;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/xv$a;

    iget-object v3, v3, Landroidx/appcompat/view/menu/xv$a;->b:Landroidx/appcompat/view/menu/av;

    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/mv;->s(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/tv;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/tv;->m()V

    goto :goto_c

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    iget v1, p0, Landroidx/appcompat/view/menu/mv;->w:I

    invoke-virtual {p0, v1, v5}, Landroidx/appcompat/view/menu/mv;->H0(IZ)V

    invoke-virtual {p0, p1, p3, p4}, Landroidx/appcompat/view/menu/mv;->r(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/gw0;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/gw0;->A(Z)V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gw0;->w()V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gw0;->n()V

    goto :goto_d

    :cond_12
    :goto_e
    if-ge p3, p4, :cond_14

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/n7;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v0, Landroidx/appcompat/view/menu/n7;->v:I

    if-ltz v1, :cond_13

    const/4 v1, -0x1

    iput v1, v0, Landroidx/appcompat/view/menu/n7;->v:I

    :cond_13
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/n7;->w()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->U0()V

    :cond_15
    return-void
.end method

.method public final T0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/n7;

    iget-boolean v3, v3, Landroidx/appcompat/view/menu/xv;->r:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/appcompat/view/menu/mv;->T(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/n7;

    iget-boolean v3, v3, Landroidx/appcompat/view/menu/xv;->r:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/appcompat/view/menu/mv;->T(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/appcompat/view/menu/mv;->T(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public U()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->Q(Z)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->b0()V

    return v0
.end method

.method public final U0()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public V(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/uv;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;

    move-result-object p1

    return-object p1
.end method

.method public V0(Landroid/os/Parcelable;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "result_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    throw v2

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "fragment_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    throw v2

    :cond_6
    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/uv;->v(Ljava/util/HashMap;)V

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ov;

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/uv;->t()V

    iget-object v1, p1, Landroidx/appcompat/view/menu/ov;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "): "

    const/4 v5, 0x2

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v6, v3, v2}, Landroidx/appcompat/view/menu/uv;->z(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/sv;

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    iget-object p1, p1, Landroidx/appcompat/view/menu/sv;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/pv;->h(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreSaveState: re-attaching retained "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    new-instance v0, Landroidx/appcompat/view/menu/tv;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->p:Landroidx/appcompat/view/menu/hv;

    iget-object v6, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-direct {v0, v1, v6, p1, v3}, Landroidx/appcompat/view/menu/tv;-><init>(Landroidx/appcompat/view/menu/hv;Landroidx/appcompat/view/menu/uv;Landroidx/appcompat/view/menu/av;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object p1

    iput-object v3, p1, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    iput-object p0, p1, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    invoke-static {v5}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreSaveState: active ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    throw v2

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pv;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/av;

    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    iget-object v3, v1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/uv;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v5}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding retained Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that was not found in the set of active Fragments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroidx/appcompat/view/menu/ov;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/pv;->l(Landroidx/appcompat/view/menu/av;)V

    iput-object p0, v1, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    new-instance v2, Landroidx/appcompat/view/menu/tv;

    iget-object v3, p0, Landroidx/appcompat/view/menu/mv;->p:Landroidx/appcompat/view/menu/hv;

    iget-object v6, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-direct {v2, v3, v6, v1}, Landroidx/appcompat/view/menu/tv;-><init>(Landroidx/appcompat/view/menu/hv;Landroidx/appcompat/view/menu/uv;Landroidx/appcompat/view/menu/av;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/tv;->r(I)V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tv;->m()V

    iput-boolean v3, v1, Landroidx/appcompat/view/menu/av;->l:Z

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tv;->m()V

    goto :goto_2

    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    iget-object v1, p1, Landroidx/appcompat/view/menu/ov;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/uv;->u(Ljava/util/List;)V

    iget-object v0, p1, Landroidx/appcompat/view/menu/ov;->o:[Landroidx/appcompat/view/menu/o7;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Landroidx/appcompat/view/menu/ov;->o:[Landroidx/appcompat/view/menu/o7;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    move v0, v1

    :goto_3
    iget-object v2, p1, Landroidx/appcompat/view/menu/ov;->o:[Landroidx/appcompat/view/menu/o7;

    array-length v3, v2

    if-ge v0, v3, :cond_11

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Landroidx/appcompat/view/menu/o7;->b(Landroidx/appcompat/view/menu/mv;)Landroidx/appcompat/view/menu/n7;

    move-result-object v2

    invoke-static {v5}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreAllState: back stack #"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (index "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroidx/appcompat/view/menu/n7;->v:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Landroidx/appcompat/view/menu/ka0;

    const-string v6, "FragmentManager"

    invoke-direct {v3, v6}, Landroidx/appcompat/view/menu/ka0;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "  "

    invoke-virtual {v2, v3, v6, v1}, Landroidx/appcompat/view/menu/n7;->r(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    :cond_f
    iget-object v3, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p1, Landroidx/appcompat/view/menu/ov;->p:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p1, Landroidx/appcompat/view/menu/ov;->q:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->V(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->z:Landroidx/appcompat/view/menu/av;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->D(Landroidx/appcompat/view/menu/av;)V

    :cond_12
    iget-object v0, p1, Landroidx/appcompat/view/menu/ov;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->l:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroidx/appcompat/view/menu/ov;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/p7;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object p1, p1, Landroidx/appcompat/view/menu/ov;->t:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->E:Ljava/util/ArrayDeque;

    return-void
.end method

.method public final W(Ljava/lang/String;IZ)I
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_2

    if-gez p2, :cond_2

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/n7;

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/n7;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    if-ltz p2, :cond_4

    iget v2, v2, Landroidx/appcompat/view/menu/n7;->v:I

    if-ne p2, v2, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-gez v0, :cond_6

    return v0

    :cond_6
    if-eqz p3, :cond_9

    :goto_2
    if-lez v0, :cond_b

    iget-object p3, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/view/menu/n7;

    if-eqz p1, :cond_7

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/n7;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    if-ltz p2, :cond_b

    iget p3, p3, Landroidx/appcompat/view/menu/n7;->v:I

    if-ne p2, p3, :cond_b

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    :cond_b
    return v0
.end method

.method public X(I)Landroidx/appcompat/view/menu/av;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/uv;->f(I)Landroidx/appcompat/view/menu/av;

    move-result-object p1

    return-object p1
.end method

.method public X0()Landroid/os/Bundle;
    .locals 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->b0()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->N()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/mv;->Q(Z)Z

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mv;->G:Z

    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/pv;->m(Z)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/uv;->w()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/uv;->k()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    invoke-static {v4}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/uv;->x()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-array v6, v5, [Landroidx/appcompat/view/menu/o7;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    new-instance v8, Landroidx/appcompat/view/menu/o7;

    iget-object v9, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/n7;

    invoke-direct {v8, v9}, Landroidx/appcompat/view/menu/o7;-><init>(Landroidx/appcompat/view/menu/n7;)V

    aput-object v8, v6, v7

    invoke-static {v4}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAllState: adding back stack #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :cond_3
    new-instance v4, Landroidx/appcompat/view/menu/ov;

    invoke-direct {v4}, Landroidx/appcompat/view/menu/ov;-><init>()V

    iput-object v1, v4, Landroidx/appcompat/view/menu/ov;->m:Ljava/util/ArrayList;

    iput-object v3, v4, Landroidx/appcompat/view/menu/ov;->n:Ljava/util/ArrayList;

    iput-object v6, v4, Landroidx/appcompat/view/menu/ov;->o:[Landroidx/appcompat/view/menu/o7;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v4, Landroidx/appcompat/view/menu/ov;->p:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->z:Landroidx/appcompat/view/menu/av;

    if-eqz v1, :cond_4

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    iput-object v1, v4, Landroidx/appcompat/view/menu/ov;->q:Ljava/lang/String;

    :cond_4
    iget-object v1, v4, Landroidx/appcompat/view/menu/ov;->r:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/appcompat/view/menu/mv;->l:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v4, Landroidx/appcompat/view/menu/ov;->s:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/appcompat/view/menu/mv;->l:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/appcompat/view/menu/mv;->E:Ljava/util/ArrayDeque;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v4, Landroidx/appcompat/view/menu/ov;->t:Ljava/util/ArrayList;

    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/appcompat/view/menu/mv;->m:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fragment_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0
.end method

.method public Y(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/uv;->g(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;

    move-result-object p1

    return-object p1
.end method

.method public Y0(Landroidx/appcompat/view/menu/av;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->h0(Landroidx/appcompat/view/menu/av;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public Z0(Landroidx/appcompat/view/menu/av;Landroidx/lifecycle/f$b;)V
    .locals 2

    iget-object v0, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->V(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/av;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p1, Landroidx/appcompat/view/menu/av;->Q:Landroidx/lifecycle/f$b;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a1(Landroidx/appcompat/view/menu/av;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->V(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/av;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->z:Landroidx/appcompat/view/menu/av;

    iput-object p1, p0, Landroidx/appcompat/view/menu/mv;->z:Landroidx/appcompat/view/menu/av;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->D(Landroidx/appcompat/view/menu/av;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->z:Landroidx/appcompat/view/menu/av;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->D(Landroidx/appcompat/view/menu/av;)V

    return-void
.end method

.method public final b0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->q()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/gw0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gw0;->r()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b1(Landroidx/appcompat/view/menu/av;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->h0(Landroidx/appcompat/view/menu/av;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->r()I

    move-result v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->u()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->E()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->F()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_1

    sget v1, Landroidx/appcompat/view/menu/nm0;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget v1, Landroidx/appcompat/view/menu/nm0;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    sget v1, Landroidx/appcompat/view/menu/nm0;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/av;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->D()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/av;->a1(Z)V

    :cond_1
    return-void
.end method

.method public c0(Landroidx/appcompat/view/menu/n7;)Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Landroidx/appcompat/view/menu/xv;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Landroidx/appcompat/view/menu/xv;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/xv$a;

    iget-object v2, v2, Landroidx/appcompat/view/menu/xv$a;->b:Landroidx/appcompat/view/menu/av;

    if-eqz v2, :cond_0

    iget-boolean v3, p1, Landroidx/appcompat/view/menu/xv;->i:Z

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public c1(Landroidx/appcompat/view/menu/av;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/view/menu/av;->z:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/appcompat/view/menu/av;->z:Z

    iget-boolean v0, p1, Landroidx/appcompat/view/menu/av;->M:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/view/menu/av;->M:Z

    :cond_1
    return-void
.end method

.method public final d0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Landroidx/appcompat/view/menu/mv;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Landroidx/appcompat/view/menu/mv;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/mv$h;

    invoke-interface {v4, p1, p2}, Landroidx/appcompat/view/menu/mv$h;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    throw v1

    :catchall_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final d1()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/tv;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/mv;->K0(Landroidx/appcompat/view/menu/tv;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e0()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final e1()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->j:Landroidx/appcompat/view/menu/bg0;

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/bg0;->g(Z)V

    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " enabling OnBackPressedCallback, caused by non-empty pending actions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->e0()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->A0(Landroidx/appcompat/view/menu/av;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnBackPressedCallback for FragmentManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " enabled state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->j:Landroidx/appcompat/view/menu/bg0;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/bg0;->g(Z)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public f(Landroidx/appcompat/view/menu/n7;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f0(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/pv;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/pv;->i(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/pv;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/tv;
    .locals 3

    iget-object v0, p1, Landroidx/appcompat/view/menu/av;->P:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/wv;->f(Landroidx/appcompat/view/menu/av;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->s(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/tv;

    move-result-object v0

    iput-object p0, p1, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/uv;->p(Landroidx/appcompat/view/menu/tv;)V

    iget-boolean v1, p1, Landroidx/appcompat/view/menu/av;->A:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/uv;->a(Landroidx/appcompat/view/menu/av;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/appcompat/view/menu/av;->l:Z

    iget-object v2, p1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-nez v2, :cond_2

    iput-boolean v1, p1, Landroidx/appcompat/view/menu/av;->M:Z

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->w0(Landroidx/appcompat/view/menu/av;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mv;->F:Z

    :cond_3
    return-object v0
.end method

.method public g0()Landroidx/appcompat/view/menu/dv;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->x:Landroidx/appcompat/view/menu/dv;

    return-object v0
.end method

.method public h(Landroidx/appcompat/view/menu/qv;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h0(Landroidx/appcompat/view/menu/av;)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p1, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Landroidx/appcompat/view/menu/av;->x:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->x:Landroidx/appcompat/view/menu/dv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->x:Landroidx/appcompat/view/menu/dv;

    iget p1, p1, Landroidx/appcompat/view/menu/av;->x:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/dv;->a(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public i0()Landroidx/appcompat/view/menu/ev;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->A:Landroidx/appcompat/view/menu/ev;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->i0()Landroidx/appcompat/view/menu/ev;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->B:Landroidx/appcompat/view/menu/ev;

    return-object v0
.end method

.method public j(Landroidx/appcompat/view/menu/fv;Landroidx/appcompat/view/menu/dv;Landroidx/appcompat/view/menu/av;)V
    .locals 0

    iput-object p2, p0, Landroidx/appcompat/view/menu/mv;->x:Landroidx/appcompat/view/menu/dv;

    iput-object p3, p0, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    if-eqz p3, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/mv$f;

    invoke-direct {p1, p0, p3}, Landroidx/appcompat/view/menu/mv$f;-><init>(Landroidx/appcompat/view/menu/mv;Landroidx/appcompat/view/menu/av;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->h(Landroidx/appcompat/view/menu/qv;)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->e1()V

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p3, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/mv;->f0(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/pv;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    goto :goto_0

    :cond_2
    new-instance p1, Landroidx/appcompat/view/menu/pv;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/pv;-><init>(Z)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->C0()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/pv;->m(Z)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    iget-object p2, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/uv;->y(Landroidx/appcompat/view/menu/pv;)V

    return-void
.end method

.method public j0()Landroidx/appcompat/view/menu/fv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Landroidx/appcompat/view/menu/av;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p1, Landroidx/appcompat/view/menu/av;->A:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/appcompat/view/menu/av;->A:Z

    iget-boolean v1, p1, Landroidx/appcompat/view/menu/av;->k:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/uv;->a(Landroidx/appcompat/view/menu/av;)V

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->w0(Landroidx/appcompat/view/menu/av;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mv;->F:Z

    :cond_2
    return-void
.end method

.method public k0()Landroidx/appcompat/view/menu/hv;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->p:Landroidx/appcompat/view/menu/hv;

    return-object v0
.end method

.method public l()Landroidx/appcompat/view/menu/xv;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/n7;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/n7;-><init>(Landroidx/appcompat/view/menu/mv;)V

    return-object v0
.end method

.method public l0()Landroidx/appcompat/view/menu/av;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    return-object v0
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/n7;->u:Z

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/n7;->e()I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->U()Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public m0()Landroidx/appcompat/view/menu/av;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->z:Landroidx/appcompat/view/menu/av;

    return-object v0
.end method

.method public n()Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/av;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/mv;->w0(Landroidx/appcompat/view/menu/av;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public n0()Landroidx/appcompat/view/menu/hw0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->C:Landroidx/appcompat/view/menu/hw0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->n0()Landroidx/appcompat/view/menu/hw0;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->D:Landroidx/appcompat/view/menu/hw0;

    return-object v0
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->b:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public o0()Landroidx/appcompat/view/menu/wv$c;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->O:Landroidx/appcompat/view/menu/wv$c;

    return-object v0
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final q()Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/uv;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/tv;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v2

    iget-object v2, v2, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->n0()Landroidx/appcompat/view/menu/hw0;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/gw0;->v(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/hw0;)Landroidx/appcompat/view/menu/gw0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public q0(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/a61;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/pv;->k(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/a61;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/util/ArrayList;II)Ljava/util/Set;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/n7;

    iget-object v1, v1, Landroidx/appcompat/view/menu/xv;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/xv$a;

    iget-object v2, v2, Landroidx/appcompat/view/menu/xv$a;->b:Landroidx/appcompat/view/menu/av;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-static {v2, p0}, Landroidx/appcompat/view/menu/gw0;->u(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/mv;)Landroidx/appcompat/view/menu/gw0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public r0()V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->Q(Z)Z

    sget-boolean v1, Landroidx/appcompat/view/menu/mv;->R:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v4, p0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/mv;->c0(Landroidx/appcompat/view/menu/n7;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Landroidx/appcompat/view/menu/mv;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/av;

    throw v3

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    iget-object v1, v1, Landroidx/appcompat/view/menu/xv;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/xv$a;

    iget-object v4, v4, Landroidx/appcompat/view/menu/xv$a;->b:Landroidx/appcompat/view/menu/av;

    if-eqz v4, :cond_2

    iput-boolean v5, v4, Landroidx/appcompat/view/menu/av;->m:Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1, v5, v0}, Landroidx/appcompat/view/menu/mv;->r(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/gw0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gw0;->f()V

    goto :goto_2

    :cond_4
    iput-object v3, p0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->e1()V

    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnBackPressedCallback enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->j:Landroidx/appcompat/view/menu/bg0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/bg0;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for  FragmentManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->j:Landroidx/appcompat/view/menu/bg0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bg0;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->M0()Z

    goto :goto_3

    :cond_6
    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->g:Landroidx/appcompat/view/menu/cg0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cg0;->e()V

    :cond_7
    :goto_3
    return-void
.end method

.method public s(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/tv;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    iget-object v1, p1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/uv;->l(Ljava/lang/String;)Landroidx/appcompat/view/menu/tv;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/tv;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->p:Landroidx/appcompat/view/menu/hv;

    iget-object v2, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-direct {v0, v1, v2, p1}, Landroidx/appcompat/view/menu/tv;-><init>(Landroidx/appcompat/view/menu/hv;Landroidx/appcompat/view/menu/uv;Landroidx/appcompat/view/menu/av;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public s0(Landroidx/appcompat/view/menu/av;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/view/menu/av;->z:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/view/menu/av;->z:Z

    iget-boolean v1, p1, Landroidx/appcompat/view/menu/av;->M:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/appcompat/view/menu/av;->M:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->b1(Landroidx/appcompat/view/menu/av;)V

    :cond_1
    return-void
.end method

.method public t(Landroidx/appcompat/view/menu/av;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p1, Landroidx/appcompat/view/menu/av;->A:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/appcompat/view/menu/av;->A:Z

    iget-boolean v2, p1, Landroidx/appcompat/view/menu/av;->k:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove from detach: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/uv;->s(Landroidx/appcompat/view/menu/av;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->w0(Landroidx/appcompat/view/menu/av;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mv;->F:Z

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->b1(Landroidx/appcompat/view/menu/av;)V

    :cond_3
    return-void
.end method

.method public t0(Landroidx/appcompat/view/menu/av;)V
    .locals 1

    iget-boolean v0, p1, Landroidx/appcompat/view/menu/av;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mv;->w0(Landroidx/appcompat/view/menu/av;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mv;->F:Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->G:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->H:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/pv;->m(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->J(I)V

    return-void
.end method

.method public u0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->I:Z

    return v0
.end method

.method public v(Landroid/content/res/Configuration;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/av;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/av;->y0(Landroid/content/res/Configuration;)V

    if-eqz p2, :cond_0

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/view/menu/mv;->v(Landroid/content/res/Configuration;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public w()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->G:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->H:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->N:Landroidx/appcompat/view/menu/pv;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/pv;->m(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->J(I)V

    return-void
.end method

.method public final w0(Landroidx/appcompat/view/menu/av;)Z
    .locals 1

    iget-boolean v0, p1, Landroidx/appcompat/view/menu/av;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/appcompat/view/menu/av;->E:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mv;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public x(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    iget v0, p0, Landroidx/appcompat/view/menu/mv;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->c:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/av;

    if-eqz v5, :cond_1

    invoke-virtual {p0, v5}, Landroidx/appcompat/view/menu/mv;->z0(Landroidx/appcompat/view/menu/av;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1, p2}, Landroidx/appcompat/view/menu/av;->A0(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    :goto_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Landroidx/appcompat/view/menu/mv;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/av;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->g0()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-object v3, p0, Landroidx/appcompat/view/menu/mv;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public final x0()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->C()Landroidx/appcompat/view/menu/mv;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->x0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public y()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mv;->I:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->Q(Z)Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->N()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mv;->p()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->J(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->x:Landroidx/appcompat/view/menu/dv;

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->y:Landroidx/appcompat/view/menu/av;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->g:Landroidx/appcompat/view/menu/cg0;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv;->j:Landroidx/appcompat/view/menu/bg0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/bg0;->f()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mv;->g:Landroidx/appcompat/view/menu/cg0;

    :cond_0
    return-void
.end method

.method public y0(Landroidx/appcompat/view/menu/av;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->U()Z

    move-result p1

    return p1
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mv;->J(I)V

    return-void
.end method

.method public z0(Landroidx/appcompat/view/menu/av;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->W()Z

    move-result p1

    return p1
.end method
