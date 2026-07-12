.class public Landroidx/appcompat/view/menu/tv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/hv;

.field public final b:Landroidx/appcompat/view/menu/uv;

.field public final c:Landroidx/appcompat/view/menu/av;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/hv;Landroidx/appcompat/view/menu/uv;Landroidx/appcompat/view/menu/av;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/tv;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/tv;->e:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iput-object p2, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    iput-object p3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/hv;Landroidx/appcompat/view/menu/uv;Landroidx/appcompat/view/menu/av;Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/tv;->d:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/view/menu/tv;->e:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iput-object p2, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    iput-object p3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p3, Landroidx/appcompat/view/menu/av;->c:Landroid/util/SparseArray;

    .line 4
    iput-object p1, p3, Landroidx/appcompat/view/menu/av;->d:Landroid/os/Bundle;

    .line 5
    iput v0, p3, Landroidx/appcompat/view/menu/av;->s:I

    .line 6
    iput-boolean v0, p3, Landroidx/appcompat/view/menu/av;->p:Z

    .line 7
    iput-boolean v0, p3, Landroidx/appcompat/view/menu/av;->k:Z

    .line 8
    iget-object p2, p3, Landroidx/appcompat/view/menu/av;->g:Landroidx/appcompat/view/menu/av;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/appcompat/view/menu/av;->h:Ljava/lang/String;

    .line 9
    iput-object p1, p3, Landroidx/appcompat/view/menu/av;->g:Landroidx/appcompat/view/menu/av;

    .line 10
    iput-object p4, p3, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    const-string p1, "arguments"

    .line 11
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p3, Landroidx/appcompat/view/menu/av;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/av;->w0(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/appcompat/view/menu/hv;->a(Landroidx/appcompat/view/menu/av;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->a0(Landroid/view/View;)Landroidx/appcompat/view/menu/av;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->B()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/av;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget v2, v1, Landroidx/appcompat/view/menu/av;->x:I

    invoke-static {v1, v0, v2}, Landroidx/appcompat/view/menu/wv;->h(Landroidx/appcompat/view/menu/av;Landroidx/appcompat/view/menu/av;I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/uv;->h(Landroidx/appcompat/view/menu/av;)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v2, v1, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public c()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ATTACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v0, Landroidx/appcompat/view/menu/av;->g:Landroidx/appcompat/view/menu/av;

    const/4 v2, 0x0

    const-string v3, " that does not belong to this FragmentManager!"

    const-string v4, " declared target fragment "

    const-string v5, "Fragment "

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/uv;->l(Ljava/lang/String;)Landroidx/appcompat/view/menu/tv;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v3, v1, Landroidx/appcompat/view/menu/av;->g:Landroidx/appcompat/view/menu/av;

    iget-object v3, v3, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    iput-object v3, v1, Landroidx/appcompat/view/menu/av;->h:Ljava/lang/String;

    iput-object v2, v1, Landroidx/appcompat/view/menu/av;->g:Landroidx/appcompat/view/menu/av;

    move-object v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v2, v2, Landroidx/appcompat/view/menu/av;->g:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/uv;->l(Ljava/lang/String;)Landroidx/appcompat/view/menu/tv;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v2, v2, Landroidx/appcompat/view/menu/av;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tv;->m()V

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mv;->j0()Landroidx/appcompat/view/menu/fv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mv;->l0()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/av;->v:Landroidx/appcompat/view/menu/av;

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/hv;->f(Landroidx/appcompat/view/menu/av;Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->x0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/hv;->b(Landroidx/appcompat/view/menu/av;Z)V

    return-void
.end method

.method public d()I
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    if-nez v1, :cond_0

    iget v0, v0, Landroidx/appcompat/view/menu/av;->a:I

    return v0

    :cond_0
    iget v1, p0, Landroidx/appcompat/view/menu/tv;->e:I

    sget-object v2, Landroidx/appcompat/view/menu/tv$b;->a:[I

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->Q:Landroidx/lifecycle/f$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v8, v0, Landroidx/appcompat/view/menu/av;->o:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v0, Landroidx/appcompat/view/menu/av;->p:Z

    if-eqz v8, :cond_5

    iget v0, p0, Landroidx/appcompat/view/menu/tv;->e:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget v8, p0, Landroidx/appcompat/view/menu/tv;->e:I

    if-ge v8, v4, :cond_6

    iget v0, v0, Landroidx/appcompat/view/menu/av;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/av;->k:Z

    if-nez v0, :cond_8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v8, v0, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    if-eqz v8, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->C()Landroidx/appcompat/view/menu/mv;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/appcompat/view/menu/gw0;->u(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/mv;)Landroidx/appcompat/view/menu/gw0;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/gw0;->s(Landroidx/appcompat/view/menu/tv;)Landroidx/appcompat/view/menu/gw0$d$a;

    move-result-object v0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    sget-object v8, Landroidx/appcompat/view/menu/gw0$d$a;->n:Landroidx/appcompat/view/menu/gw0$d$a;

    if-ne v0, v8, :cond_a

    const/4 v0, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_a
    sget-object v8, Landroidx/appcompat/view/menu/gw0$d$a;->o:Landroidx/appcompat/view/menu/gw0$d$a;

    if-ne v0, v8, :cond_b

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v8, v0, Landroidx/appcompat/view/menu/av;->l:Z

    if-eqz v8, :cond_d

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->V()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_c
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_d
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v3, v0, Landroidx/appcompat/view/menu/av;->I:Z

    if-eqz v3, :cond_e

    iget v0, v0, Landroidx/appcompat/view/menu/av;->a:I

    if-ge v0, v2, :cond_e

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v2, v0, Landroidx/appcompat/view/menu/av;->m:Z

    if-eqz v2, :cond_f

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_f
    invoke-static {v6}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeExpectedState() of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    return v1
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v2, v1, Landroidx/appcompat/view/menu/av;->O:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroidx/appcompat/view/menu/hv;->g(Landroidx/appcompat/view/menu/av;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/av;->z0(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v2, v0, v3}, Landroidx/appcompat/view/menu/hv;->c(Landroidx/appcompat/view/menu/av;Landroid/os/Bundle;Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput v0, v1, Landroidx/appcompat/view/menu/av;->a:I

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->T0()V

    :goto_1
    return-void
.end method

.method public f()V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/av;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATE_VIEW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v3, "savedInstanceState"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v3, v1}, Landroidx/appcompat/view/menu/av;->E0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v5, v4, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    move-object v2, v5

    goto/16 :goto_2

    :cond_3
    iget v5, v4, Landroidx/appcompat/view/menu/av;->x:I

    if-eqz v5, :cond_7

    const/4 v2, -0x1

    if-eq v5, v2, :cond_6

    iget-object v2, v4, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/mv;->g0()Landroidx/appcompat/view/menu/dv;

    move-result-object v2

    iget-object v4, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget v4, v4, Landroidx/appcompat/view/menu/av;->x:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/dv;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    iget-object v4, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v5, v4, Landroidx/appcompat/view/menu/av;->q:Z

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/av;->I()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget v1, v1, Landroidx/appcompat/view/menu/av;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "unknown"

    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget v3, v3, Landroidx/appcompat/view/menu/av;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    instance-of v4, v2, Landroidx/fragment/app/FragmentContainerView;

    if-nez v4, :cond_7

    iget-object v4, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-static {v4, v2}, Landroidx/appcompat/view/menu/wv;->g(Landroidx/appcompat/view/menu/av;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    iget-object v4, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iput-object v2, v4, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3, v2, v1}, Landroidx/appcompat/view/menu/av;->B0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v3, v3, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    const/4 v4, 0x2

    if-eqz v3, :cond_d

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto VIEW_CREATED: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v5, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    sget v6, Landroidx/appcompat/view/menu/nm0;->a:I

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->b()V

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v2, v0, Landroidx/appcompat/view/menu/av;->z:Z

    if-eqz v2, :cond_a

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-static {v0}, Landroidx/appcompat/view/menu/m51;->h0(Landroid/view/View;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    new-instance v2, Landroidx/appcompat/view/menu/tv$a;

    invoke-direct {v2, p0, v0}, Landroidx/appcompat/view/menu/tv$a;-><init>(Landroidx/appcompat/view/menu/tv;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->O0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v5, v2, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v0, v2, v5, v1, v3}, Landroidx/appcompat/view/menu/hv;->l(Landroidx/appcompat/view/menu/av;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/av;->b1(F)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v2, v1, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    if-eqz v2, :cond_d

    if-nez v0, :cond_d

    iget-object v0, v1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/av;->Y0(Landroid/view/View;)V

    invoke-static {v4}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestFocus: Saved focused view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for Fragment "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iput v4, v0, Landroidx/appcompat/view/menu/av;->a:I

    return-void
.end method

.method public g()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/av;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->V()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v4, v3, Landroidx/appcompat/view/menu/av;->n:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    iget-object v3, v3, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Landroidx/appcompat/view/menu/uv;->z(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_2
    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/uv;->n()Landroidx/appcompat/view/menu/pv;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/pv;->n(Landroidx/appcompat/view/menu/av;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/uv;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/av;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/av;->B:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iput-object v0, v1, Landroidx/appcompat/view/menu/av;->g:Landroidx/appcompat/view/menu/av;

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iput v2, v0, Landroidx/appcompat/view/menu/av;->a:I

    return-void

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v0, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->C0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/hv;->m(Landroidx/appcompat/view/menu/av;Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    iput-object v1, v0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->T:Landroidx/appcompat/view/menu/je0;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/je0;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iput-boolean v2, v0, Landroidx/appcompat/view/menu/av;->p:Z

    return-void
.end method

.method public i()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ATTACHED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->D0()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/hv;->d(Landroidx/appcompat/view/menu/av;Z)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/appcompat/view/menu/av;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/view/menu/av;->v:Landroidx/appcompat/view/menu/av;

    iput-object v2, v1, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    iget-boolean v2, v1, Landroidx/appcompat/view/menu/av;->l:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->V()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/uv;->n()Landroidx/appcompat/view/menu/pv;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/pv;->n(Landroidx/appcompat/view/menu/av;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initState called for fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->S()V

    :cond_3
    return-void
.end method

.method public j()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/av;->o:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/av;->p:Z

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/av;->r:Z

    if-nez v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/av;->E0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroidx/appcompat/view/menu/av;->B0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v3, v1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    sget v4, Landroidx/appcompat/view/menu/nm0;->a:I

    invoke-virtual {v3, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v3, v1, Landroidx/appcompat/view/menu/av;->z:Z

    if-eqz v3, :cond_2

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->O0()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v4, v3, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v1, v3, v4, v0, v2}, Landroidx/appcompat/view/menu/hv;->l(Landroidx/appcompat/view/menu/av;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v1, 0x2

    iput v1, v0, Landroidx/appcompat/view/menu/av;->a:I

    :cond_3
    return-void
.end method

.method public k()Landroidx/appcompat/view/menu/av;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    return-object v0
.end method

.method public final l(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public m()V
    .locals 8

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/tv;->d:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroidx/appcompat/view/menu/tv;->d:Z

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->d()I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget v6, v5, Landroidx/appcompat/view/menu/av;->a:I

    const/4 v7, 0x3

    if-eq v4, v6, :cond_9

    if-le v4, v6, :cond_3

    add-int/lit8 v6, v6, 0x1

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->o()V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :pswitch_1
    const/4 v3, 0x6

    iput v3, v5, Landroidx/appcompat/view/menu/av;->a:I

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->s()V

    goto/16 :goto_2

    :pswitch_3
    iget-object v3, v5, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, v5, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/av;->C()Landroidx/appcompat/view/menu/mv;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/appcompat/view/menu/gw0;->u(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/mv;)Landroidx/appcompat/view/menu/gw0;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v4, v4, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-static {v4}, Landroidx/appcompat/view/menu/gw0$d$b;->g(I)Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Landroidx/appcompat/view/menu/gw0;->j(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/tv;)V

    :cond_2
    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v4, 0x4

    iput v4, v3, Landroidx/appcompat/view/menu/av;->a:I

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->a()V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->j()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->f()V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->e()V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->c()V

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v6, v6, -0x1

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->n()V

    goto/16 :goto_2

    :pswitch_9
    const/4 v3, 0x5

    iput v3, v5, Landroidx/appcompat/view/menu/av;->a:I

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->t()V

    goto/16 :goto_2

    :pswitch_b
    invoke-static {v7}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v4, v3, Landroidx/appcompat/view/menu/av;->n:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    iget-object v3, v3, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->p()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroidx/appcompat/view/menu/uv;->z(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_1

    :cond_5
    iget-object v4, v3, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v3, v3, Landroidx/appcompat/view/menu/av;->c:Landroid/util/SparseArray;

    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->q()V

    :cond_6
    :goto_1
    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v4, v3, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v4, :cond_7

    iget-object v4, v3, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/av;->C()Landroidx/appcompat/view/menu/mv;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/appcompat/view/menu/gw0;->u(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/mv;)Landroidx/appcompat/view/menu/gw0;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/appcompat/view/menu/gw0;->l(Landroidx/appcompat/view/menu/tv;)V

    :cond_7
    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iput v7, v3, Landroidx/appcompat/view/menu/av;->a:I

    goto :goto_2

    :pswitch_c
    iput-boolean v0, v5, Landroidx/appcompat/view/menu/av;->p:Z

    iput v1, v5, Landroidx/appcompat/view/menu/av;->a:I

    goto :goto_2

    :pswitch_d
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->h()V

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iput v2, v3, Landroidx/appcompat/view/menu/av;->a:I

    goto :goto_2

    :pswitch_e
    iget-boolean v3, v5, Landroidx/appcompat/view/menu/av;->n:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    iget-object v4, v5, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/uv;->o(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_8

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    iget-object v4, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v4, v4, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->p()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/uv;->z(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->g()V

    goto :goto_2

    :pswitch_f
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->i()V

    :goto_2
    move v3, v2

    goto/16 :goto_0

    :cond_9
    if-nez v3, :cond_c

    const/4 v1, -0x1

    if-ne v6, v1, :cond_c

    iget-boolean v1, v5, Landroidx/appcompat/view/menu/av;->l:Z

    if-eqz v1, :cond_c

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/av;->V()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/av;->n:Z

    if-nez v1, :cond_c

    invoke-static {v7}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up state of never attached fragment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/uv;->n()Landroidx/appcompat/view/menu/pv;

    move-result-object v1

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/view/menu/pv;->e(Landroidx/appcompat/view/menu/av;Z)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/uv;->q(Landroidx/appcompat/view/menu/tv;)V

    invoke-static {v7}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initState called for fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->S()V

    :cond_c
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v2, v1, Landroidx/appcompat/view/menu/av;->M:Z

    if-eqz v2, :cond_10

    iget-object v2, v1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, v1, Landroidx/appcompat/view/menu/av;->G:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->C()Landroidx/appcompat/view/menu/mv;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/appcompat/view/menu/gw0;->u(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/mv;)Landroidx/appcompat/view/menu/gw0;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-boolean v2, v2, Landroidx/appcompat/view/menu/av;->z:Z

    if-eqz v2, :cond_d

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/gw0;->k(Landroidx/appcompat/view/menu/tv;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/gw0;->m(Landroidx/appcompat/view/menu/tv;)V

    :cond_e
    :goto_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v2, v1, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/mv;->t0(Landroidx/appcompat/view/menu/av;)V

    :cond_f
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iput-boolean v0, v1, Landroidx/appcompat/view/menu/av;->M:Z

    iget-boolean v2, v1, Landroidx/appcompat/view/menu/av;->z:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/av;->k0(Z)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mv;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/tv;->d:Z

    return-void

    :goto_4
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/tv;->d:Z

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public n()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->H0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/hv;->e(Landroidx/appcompat/view/menu/av;Z)V

    return-void
.end method

.method public o()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->x()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/tv;->l(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Restoring focused view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v0, "succeeded"

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/av;->Y0(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->K0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/hv;->h(Landroidx/appcompat/view/menu/av;Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->b:Landroidx/appcompat/view/menu/uv;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v2, v2, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/uv;->z(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iput-object v1, v0, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/appcompat/view/menu/av;->c:Landroid/util/SparseArray;

    iput-object v1, v0, Landroidx/appcompat/view/menu/av;->d:Landroid/os/Bundle;

    return-void
.end method

.method public p()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget v2, v1, Landroidx/appcompat/view/menu/av;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/sv;

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/sv;-><init>(Landroidx/appcompat/view/menu/av;)V

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget v1, v1, Landroidx/appcompat/view/menu/av;->a:I

    if-le v1, v3, :cond_6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/av;->L0(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v3, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroidx/appcompat/view/menu/hv;->i(Landroidx/appcompat/view/menu/av;Landroid/os/Bundle;Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v2, v2, Landroidx/appcompat/view/menu/av;->V:Landroidx/appcompat/view/menu/qr0;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/qr0;->e(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "registryState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/mv;->X0()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "childFragmentManager"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tv;->q()V

    :cond_4
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->c:Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    const-string v2, "viewState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_5
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->d:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    const-string v2, "viewRegistryState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->f:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    const-string v2, "arguments"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    return-object v0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving view state for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iput-object v0, v1, Landroidx/appcompat/view/menu/av;->c:Landroid/util/SparseArray;

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iget-object v1, v1, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/cw;->g(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    iput-object v0, v1, Landroidx/appcompat/view/menu/av;->d:Landroid/os/Bundle;

    :cond_3
    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/tv;->e:I

    return-void
.end method

.method public s()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->M0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/hv;->j(Landroidx/appcompat/view/menu/av;Z)V

    return-void
.end method

.method public t()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->N0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv;->a:Landroidx/appcompat/view/menu/hv;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv;->c:Landroidx/appcompat/view/menu/av;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/hv;->k(Landroidx/appcompat/view/menu/av;Z)V

    return-void
.end method
