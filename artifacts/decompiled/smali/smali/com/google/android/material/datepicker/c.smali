.class public final Lcom/google/android/material/datepicker/c;
.super Landroidx/appcompat/view/menu/bi0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/c$m;,
        Lcom/google/android/material/datepicker/c$l;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/appcompat/view/menu/bi0;"
    }
.end annotation


# static fields
.field public static final n0:Ljava/lang/Object;

.field public static final o0:Ljava/lang/Object;

.field public static final p0:Ljava/lang/Object;

.field public static final q0:Ljava/lang/Object;


# instance fields
.field public c0:I

.field public d0:Lcom/google/android/material/datepicker/a;

.field public e0:Landroidx/appcompat/view/menu/td0;

.field public f0:Lcom/google/android/material/datepicker/c$l;

.field public g0:Landroidx/appcompat/view/menu/k9;

.field public h0:Landroidx/recyclerview/widget/RecyclerView;

.field public i0:Landroidx/recyclerview/widget/RecyclerView;

.field public j0:Landroid/view/View;

.field public k0:Landroid/view/View;

.field public l0:Landroid/view/View;

.field public m0:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/c;->n0:Ljava/lang/Object;

    const-string v0, "NAVIGATION_PREV_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/c;->o0:Ljava/lang/Object;

    const-string v0, "NAVIGATION_NEXT_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/c;->p0:Ljava/lang/Object;

    const-string v0, "SELECTOR_TOGGLE_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/c;->q0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/bi0;-><init>()V

    return-void
.end method

.method public static synthetic h1(Lcom/google/android/material/datepicker/c;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic i1(Lcom/google/android/material/datepicker/c;)Lcom/google/android/material/datepicker/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->d0:Lcom/google/android/material/datepicker/a;

    return-object p0
.end method

.method public static synthetic j1(Lcom/google/android/material/datepicker/c;)Landroidx/appcompat/view/menu/yi;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic k1(Lcom/google/android/material/datepicker/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->m0:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic l1(Lcom/google/android/material/datepicker/c;Landroidx/appcompat/view/menu/td0;)Landroidx/appcompat/view/menu/td0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->e0:Landroidx/appcompat/view/menu/td0;

    return-object p1
.end method

.method public static s1(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/appcompat/view/menu/em0;->H:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static t1(Landroid/content/Context;)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/appcompat/view/menu/em0;->O:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Landroidx/appcompat/view/menu/em0;->P:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Landroidx/appcompat/view/menu/em0;->N:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Landroidx/appcompat/view/menu/em0;->J:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/google/android/material/datepicker/e;->e:I

    sget v3, Landroidx/appcompat/view/menu/em0;->H:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/lit8 v2, v2, -0x1

    sget v4, Landroidx/appcompat/view/menu/em0;->M:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/2addr v2, v4

    add-int/2addr v3, v2

    sget v2, Landroidx/appcompat/view/menu/em0;->F:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    add-int/2addr v0, p0

    return v0
.end method

.method public static v1(Landroidx/appcompat/view/menu/yi;ILcom/google/android/material/datepicker/a;Landroidx/appcompat/view/menu/aj;)Lcom/google/android/material/datepicker/c;
    .locals 3

    new-instance v0, Lcom/google/android/material/datepicker/c;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/c;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "THEME_RES_ID_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "GRID_SELECTOR_KEY"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CURRENT_MONTH_KEY"

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/a;->l()Landroidx/appcompat/view/menu/td0;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/av;->X0(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public A1()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->f0:Lcom/google/android/material/datepicker/c$l;

    sget-object v1, Lcom/google/android/material/datepicker/c$l;->n:Lcom/google/android/material/datepicker/c$l;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/material/datepicker/c$l;->m:Lcom/google/android/material/datepicker/c$l;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/c;->y1(Lcom/google/android/material/datepicker/c$l;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/material/datepicker/c$l;->m:Lcom/google/android/material/datepicker/c$l;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/c;->y1(Lcom/google/android/material/datepicker/c$l;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b0(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/av;->b0(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->o()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/c;->c0:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/a;

    iput-object v0, p0, Lcom/google/android/material/datepicker/c;->d0:Lcom/google/android/material/datepicker/a;

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/td0;

    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->e0:Landroidx/appcompat/view/menu/td0;

    return-void
.end method

.method public f0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->q()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/c;->c0:I

    invoke-direct {v6, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroidx/appcompat/view/menu/k9;

    invoke-direct {v0, v6}, Landroidx/appcompat/view/menu/k9;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/c;->g0:Landroidx/appcompat/view/menu/k9;

    invoke-virtual {p1, v6}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/c;->d0:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/a;->m()Landroidx/appcompat/view/menu/td0;

    move-result-object v1

    invoke-static {v6}, Lcom/google/android/material/datepicker/d;->B1(Landroid/content/Context;)Z

    move-result v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    sget v2, Landroidx/appcompat/view/menu/vm0;->n:I

    move v5, v7

    goto :goto_0

    :cond_0
    sget v2, Landroidx/appcompat/view/menu/vm0;->l:I

    move v5, v8

    :goto_0
    invoke-virtual {v0, v2, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->R0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/c;->t1(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setMinimumHeight(I)V

    sget v0, Landroidx/appcompat/view/menu/sm0;->u:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v2, Lcom/google/android/material/datepicker/c$c;

    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/c$c;-><init>(Lcom/google/android/material/datepicker/c;)V

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/m51;->k0(Landroid/view/View;Landroidx/appcompat/view/menu/b0;)V

    iget-object v2, p0, Lcom/google/android/material/datepicker/c;->d0:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v2}, Lcom/google/android/material/datepicker/a;->j()I

    move-result v2

    new-instance v3, Landroidx/appcompat/view/menu/bj;

    if-lez v2, :cond_1

    invoke-direct {v3, v2}, Landroidx/appcompat/view/menu/bj;-><init>(I)V

    goto :goto_1

    :cond_1
    invoke-direct {v3}, Landroidx/appcompat/view/menu/bj;-><init>()V

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v1, Landroidx/appcompat/view/menu/td0;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    sget v0, Landroidx/appcompat/view/menu/sm0;->x:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v10, Lcom/google/android/material/datepicker/c$d;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->q()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, v10

    move-object v1, p0

    move v3, v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/c$d;-><init>(Lcom/google/android/material/datepicker/c;Landroid/content/Context;IZI)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lcom/google/android/material/datepicker/c;->n0:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v10, Lcom/google/android/material/datepicker/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/datepicker/c;->d0:Lcom/google/android/material/datepicker/a;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/datepicker/c$e;

    invoke-direct {v5, p0}, Lcom/google/android/material/datepicker/c$e;-><init>(Lcom/google/android/material/datepicker/c;)V

    move-object v0, v10

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/f;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/yi;Lcom/google/android/material/datepicker/a;Landroidx/appcompat/view/menu/aj;Lcom/google/android/material/datepicker/c$m;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/view/menu/um0;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget v1, Landroidx/appcompat/view/menu/sm0;->y:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/google/android/material/datepicker/c;->h0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/c;->h0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, v6, v0, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->h0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/appcompat/view/menu/wa1;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/wa1;-><init>(Lcom/google/android/material/datepicker/c;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->h0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/c;->n1()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_2
    sget v0, Landroidx/appcompat/view/menu/sm0;->p:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v9, v10}, Lcom/google/android/material/datepicker/c;->m1(Landroid/view/View;Lcom/google/android/material/datepicker/f;)V

    :cond_3
    invoke-static {v6}, Lcom/google/android/material/datepicker/d;->B1(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroidx/recyclerview/widget/j;

    invoke-direct {v0}, Landroidx/recyclerview/widget/j;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/google/android/material/datepicker/c;->e0:Landroidx/appcompat/view/menu/td0;

    invoke-virtual {v10, v1}, Lcom/google/android/material/datepicker/f;->w(Landroidx/appcompat/view/menu/td0;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->f1(I)V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/c;->z1()V

    return-object v9
.end method

.method public f1(Landroidx/appcompat/view/menu/lg0;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/bi0;->f1(Landroidx/appcompat/view/menu/lg0;)Z

    move-result p1

    return p1
.end method

.method public final m1(Landroid/view/View;Lcom/google/android/material/datepicker/f;)V
    .locals 3

    sget v0, Landroidx/appcompat/view/menu/sm0;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    sget-object v1, Lcom/google/android/material/datepicker/c;->q0:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/material/datepicker/c$h;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/c$h;-><init>(Lcom/google/android/material/datepicker/c;)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/m51;->k0(Landroid/view/View;Landroidx/appcompat/view/menu/b0;)V

    sget v1, Landroidx/appcompat/view/menu/sm0;->r:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/c;->j0:Landroid/view/View;

    sget-object v2, Lcom/google/android/material/datepicker/c;->o0:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v1, Landroidx/appcompat/view/menu/sm0;->q:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/c;->k0:Landroid/view/View;

    sget-object v2, Lcom/google/android/material/datepicker/c;->p0:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v1, Landroidx/appcompat/view/menu/sm0;->y:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/c;->l0:Landroid/view/View;

    sget v1, Landroidx/appcompat/view/menu/sm0;->t:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->m0:Landroid/view/View;

    sget-object p1, Lcom/google/android/material/datepicker/c$l;->m:Lcom/google/android/material/datepicker/c$l;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/c;->y1(Lcom/google/android/material/datepicker/c$l;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->e0:Landroidx/appcompat/view/menu/td0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/td0;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/c$i;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/material/datepicker/c$i;-><init>(Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/f;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$s;)V

    new-instance p1, Lcom/google/android/material/datepicker/c$j;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/c$j;-><init>(Lcom/google/android/material/datepicker/c;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->k0:Landroid/view/View;

    new-instance v0, Lcom/google/android/material/datepicker/c$k;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/c$k;-><init>(Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->j0:Landroid/view/View;

    new-instance v0, Lcom/google/android/material/datepicker/c$a;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/c$a;-><init>(Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final n1()Landroidx/recyclerview/widget/RecyclerView$n;
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/c$g;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/c$g;-><init>(Lcom/google/android/material/datepicker/c;)V

    return-object v0
.end method

.method public o1()Lcom/google/android/material/datepicker/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->d0:Lcom/google/android/material/datepicker/a;

    return-object v0
.end method

.method public p1()Landroidx/appcompat/view/menu/k9;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->g0:Landroidx/appcompat/view/menu/k9;

    return-object v0
.end method

.method public q1()Landroidx/appcompat/view/menu/td0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->e0:Landroidx/appcompat/view/menu/td0;

    return-object v0
.end method

.method public r0(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/av;->r0(Landroid/os/Bundle;)V

    const-string v0, "THEME_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/c;->c0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GRID_SELECTOR_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v2, p0, Lcom/google/android/material/datepicker/c;->d0:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_MONTH_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/c;->e0:Landroidx/appcompat/view/menu/td0;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public r1()Landroidx/appcompat/view/menu/yi;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u1()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public final w1(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/c$b;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/c$b;-><init>(Lcom/google/android/material/datepicker/c;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public x1(Landroidx/appcompat/view/menu/td0;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/f;->w(Landroidx/appcompat/view/menu/td0;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/datepicker/c;->e0:Landroidx/appcompat/view/menu/td0;

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/f;->w(Landroidx/appcompat/view/menu/td0;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-lez v0, :cond_1

    move v4, v5

    :cond_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->e0:Landroidx/appcompat/view/menu/td0;

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->f1(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/c;->w1(I)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->f1(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/c;->w1(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/c;->w1(I)V

    :goto_1
    return-void
.end method

.method public y1(Lcom/google/android/material/datepicker/c$l;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->f0:Lcom/google/android/material/datepicker/c$l;

    sget-object v0, Lcom/google/android/material/datepicker/c$l;->n:Lcom/google/android/material/datepicker/c$l;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->h0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->h0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/wa1;

    iget-object v3, p0, Lcom/google/android/material/datepicker/c;->e0:Landroidx/appcompat/view/menu/td0;

    iget v3, v3, Landroidx/appcompat/view/menu/td0;->o:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/wa1;->t(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->D1(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->l0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->m0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->j0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->k0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/datepicker/c$l;->m:Lcom/google/android/material/datepicker/c$l;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->l0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->m0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->j0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->k0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->e0:Landroidx/appcompat/view/menu/td0;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/c;->x1(Landroidx/appcompat/view/menu/td0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final z1()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->i0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/c$f;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/c$f;-><init>(Lcom/google/android/material/datepicker/c;)V

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/m51;->k0(Landroid/view/View;Landroidx/appcompat/view/menu/b0;)V

    return-void
.end method
