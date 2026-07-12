.class public Landroidx/appcompat/view/menu/st0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/st0$c;,
        Landroidx/appcompat/view/menu/st0$b;
    }
.end annotation


# static fields
.field public static final m:Landroidx/appcompat/view/menu/gh;


# instance fields
.field public a:Landroidx/appcompat/view/menu/hh;

.field public b:Landroidx/appcompat/view/menu/hh;

.field public c:Landroidx/appcompat/view/menu/hh;

.field public d:Landroidx/appcompat/view/menu/hh;

.field public e:Landroidx/appcompat/view/menu/gh;

.field public f:Landroidx/appcompat/view/menu/gh;

.field public g:Landroidx/appcompat/view/menu/gh;

.field public h:Landroidx/appcompat/view/menu/gh;

.field public i:Landroidx/appcompat/view/menu/kn;

.field public j:Landroidx/appcompat/view/menu/kn;

.field public k:Landroidx/appcompat/view/menu/kn;

.field public l:Landroidx/appcompat/view/menu/kn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/mo0;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/mo0;-><init>(F)V

    sput-object v0, Landroidx/appcompat/view/menu/st0;->m:Landroidx/appcompat/view/menu/gh;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Landroidx/appcompat/view/menu/pb0;->b()Landroidx/appcompat/view/menu/hh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->a:Landroidx/appcompat/view/menu/hh;

    .line 17
    invoke-static {}, Landroidx/appcompat/view/menu/pb0;->b()Landroidx/appcompat/view/menu/hh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->b:Landroidx/appcompat/view/menu/hh;

    .line 18
    invoke-static {}, Landroidx/appcompat/view/menu/pb0;->b()Landroidx/appcompat/view/menu/hh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->c:Landroidx/appcompat/view/menu/hh;

    .line 19
    invoke-static {}, Landroidx/appcompat/view/menu/pb0;->b()Landroidx/appcompat/view/menu/hh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->d:Landroidx/appcompat/view/menu/hh;

    .line 20
    new-instance v0, Landroidx/appcompat/view/menu/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/e;-><init>(F)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->e:Landroidx/appcompat/view/menu/gh;

    .line 21
    new-instance v0, Landroidx/appcompat/view/menu/e;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/e;-><init>(F)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->f:Landroidx/appcompat/view/menu/gh;

    .line 22
    new-instance v0, Landroidx/appcompat/view/menu/e;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/e;-><init>(F)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->g:Landroidx/appcompat/view/menu/gh;

    .line 23
    new-instance v0, Landroidx/appcompat/view/menu/e;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/e;-><init>(F)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->h:Landroidx/appcompat/view/menu/gh;

    .line 24
    invoke-static {}, Landroidx/appcompat/view/menu/pb0;->c()Landroidx/appcompat/view/menu/kn;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->i:Landroidx/appcompat/view/menu/kn;

    .line 25
    invoke-static {}, Landroidx/appcompat/view/menu/pb0;->c()Landroidx/appcompat/view/menu/kn;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->j:Landroidx/appcompat/view/menu/kn;

    .line 26
    invoke-static {}, Landroidx/appcompat/view/menu/pb0;->c()Landroidx/appcompat/view/menu/kn;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->k:Landroidx/appcompat/view/menu/kn;

    .line 27
    invoke-static {}, Landroidx/appcompat/view/menu/pb0;->c()Landroidx/appcompat/view/menu/kn;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->l:Landroidx/appcompat/view/menu/kn;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/st0$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->a(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/hh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->a:Landroidx/appcompat/view/menu/hh;

    .line 4
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->e(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/hh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->b:Landroidx/appcompat/view/menu/hh;

    .line 5
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->f(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/hh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->c:Landroidx/appcompat/view/menu/hh;

    .line 6
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->g(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/hh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->d:Landroidx/appcompat/view/menu/hh;

    .line 7
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->h(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/gh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->e:Landroidx/appcompat/view/menu/gh;

    .line 8
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->i(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/gh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->f:Landroidx/appcompat/view/menu/gh;

    .line 9
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->j(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/gh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->g:Landroidx/appcompat/view/menu/gh;

    .line 10
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->k(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/gh;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->h:Landroidx/appcompat/view/menu/gh;

    .line 11
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->l(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/kn;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->i:Landroidx/appcompat/view/menu/kn;

    .line 12
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->b(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/kn;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->j:Landroidx/appcompat/view/menu/kn;

    .line 13
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->c(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/kn;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/st0;->k:Landroidx/appcompat/view/menu/kn;

    .line 14
    invoke-static {p1}, Landroidx/appcompat/view/menu/st0$b;->d(Landroidx/appcompat/view/menu/st0$b;)Landroidx/appcompat/view/menu/kn;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/st0;->l:Landroidx/appcompat/view/menu/kn;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/st0$b;Landroidx/appcompat/view/menu/st0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/st0;-><init>(Landroidx/appcompat/view/menu/st0$b;)V

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/st0$b;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/st0$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/st0$b;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;II)Landroidx/appcompat/view/menu/st0$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/st0;->c(Landroid/content/Context;III)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;III)Landroidx/appcompat/view/menu/st0$b;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/e;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Landroidx/appcompat/view/menu/e;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/st0;->d(Landroid/content/Context;IILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;IILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;
    .locals 6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    if-eqz p2, :cond_0

    new-instance p0, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, p0

    :cond_0
    sget-object p0, Landroidx/appcompat/view/menu/ln0;->K3:[I

    invoke-virtual {v0, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    sget p1, Landroidx/appcompat/view/menu/ln0;->L3:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget p2, Landroidx/appcompat/view/menu/ln0;->O3:I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v0, Landroidx/appcompat/view/menu/ln0;->P3:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, Landroidx/appcompat/view/menu/ln0;->N3:I

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Landroidx/appcompat/view/menu/ln0;->M3:I

    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget v2, Landroidx/appcompat/view/menu/ln0;->Q3:I

    invoke-static {p0, v2, p3}, Landroidx/appcompat/view/menu/st0;->m(Landroid/content/res/TypedArray;ILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/gh;

    move-result-object p3

    sget v2, Landroidx/appcompat/view/menu/ln0;->T3:I

    invoke-static {p0, v2, p3}, Landroidx/appcompat/view/menu/st0;->m(Landroid/content/res/TypedArray;ILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/gh;

    move-result-object v2

    sget v3, Landroidx/appcompat/view/menu/ln0;->U3:I

    invoke-static {p0, v3, p3}, Landroidx/appcompat/view/menu/st0;->m(Landroid/content/res/TypedArray;ILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/gh;

    move-result-object v3

    sget v4, Landroidx/appcompat/view/menu/ln0;->S3:I

    invoke-static {p0, v4, p3}, Landroidx/appcompat/view/menu/st0;->m(Landroid/content/res/TypedArray;ILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/gh;

    move-result-object v4

    sget v5, Landroidx/appcompat/view/menu/ln0;->R3:I

    invoke-static {p0, v5, p3}, Landroidx/appcompat/view/menu/st0;->m(Landroid/content/res/TypedArray;ILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/gh;

    move-result-object p3

    new-instance v5, Landroidx/appcompat/view/menu/st0$b;

    invoke-direct {v5}, Landroidx/appcompat/view/menu/st0$b;-><init>()V

    invoke-virtual {v5, p2, v2}, Landroidx/appcompat/view/menu/st0$b;->y(ILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p2

    invoke-virtual {p2, v0, v3}, Landroidx/appcompat/view/menu/st0$b;->C(ILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p2

    invoke-virtual {p2, v1, v4}, Landroidx/appcompat/view/menu/st0$b;->u(ILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/view/menu/st0$b;->q(ILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/appcompat/view/menu/st0$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/appcompat/view/menu/st0;->f(Landroid/content/Context;Landroid/util/AttributeSet;III)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroid/util/AttributeSet;III)Landroidx/appcompat/view/menu/st0$b;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/e;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Landroidx/appcompat/view/menu/e;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/appcompat/view/menu/st0;->g(Landroid/content/Context;Landroid/util/AttributeSet;IILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Landroid/util/AttributeSet;IILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ln0;->T2:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroidx/appcompat/view/menu/ln0;->U2:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget v0, Landroidx/appcompat/view/menu/ln0;->V2:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p2, p3, p4}, Landroidx/appcompat/view/menu/st0;->d(Landroid/content/Context;IILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/res/TypedArray;ILandroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/gh;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p2, Landroidx/appcompat/view/menu/e;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/e;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    new-instance p0, Landroidx/appcompat/view/menu/mo0;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/mo0;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public h()Landroidx/appcompat/view/menu/kn;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->k:Landroidx/appcompat/view/menu/kn;

    return-object v0
.end method

.method public i()Landroidx/appcompat/view/menu/hh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->d:Landroidx/appcompat/view/menu/hh;

    return-object v0
.end method

.method public j()Landroidx/appcompat/view/menu/gh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->h:Landroidx/appcompat/view/menu/gh;

    return-object v0
.end method

.method public k()Landroidx/appcompat/view/menu/hh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->c:Landroidx/appcompat/view/menu/hh;

    return-object v0
.end method

.method public l()Landroidx/appcompat/view/menu/gh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->g:Landroidx/appcompat/view/menu/gh;

    return-object v0
.end method

.method public n()Landroidx/appcompat/view/menu/kn;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->l:Landroidx/appcompat/view/menu/kn;

    return-object v0
.end method

.method public o()Landroidx/appcompat/view/menu/kn;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->j:Landroidx/appcompat/view/menu/kn;

    return-object v0
.end method

.method public p()Landroidx/appcompat/view/menu/kn;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->i:Landroidx/appcompat/view/menu/kn;

    return-object v0
.end method

.method public q()Landroidx/appcompat/view/menu/hh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->a:Landroidx/appcompat/view/menu/hh;

    return-object v0
.end method

.method public r()Landroidx/appcompat/view/menu/gh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->e:Landroidx/appcompat/view/menu/gh;

    return-object v0
.end method

.method public s()Landroidx/appcompat/view/menu/hh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->b:Landroidx/appcompat/view/menu/hh;

    return-object v0
.end method

.method public t()Landroidx/appcompat/view/menu/gh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->f:Landroidx/appcompat/view/menu/gh;

    return-object v0
.end method

.method public u(Landroid/graphics/RectF;)Z
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->l:Landroidx/appcompat/view/menu/kn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/appcompat/view/menu/kn;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->j:Landroidx/appcompat/view/menu/kn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->i:Landroidx/appcompat/view/menu/kn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/st0;->k:Landroidx/appcompat/view/menu/kn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/st0;->e:Landroidx/appcompat/view/menu/gh;

    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/gh;->a(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v4, p0, Landroidx/appcompat/view/menu/st0;->f:Landroidx/appcompat/view/menu/gh;

    invoke-interface {v4, p1}, Landroidx/appcompat/view/menu/gh;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/appcompat/view/menu/st0;->h:Landroidx/appcompat/view/menu/gh;

    invoke-interface {v4, p1}, Landroidx/appcompat/view/menu/gh;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/appcompat/view/menu/st0;->g:Landroidx/appcompat/view/menu/gh;

    invoke-interface {v4, p1}, Landroidx/appcompat/view/menu/gh;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/st0;->b:Landroidx/appcompat/view/menu/hh;

    instance-of v1, v1, Landroidx/appcompat/view/menu/wp0;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/st0;->a:Landroidx/appcompat/view/menu/hh;

    instance-of v1, v1, Landroidx/appcompat/view/menu/wp0;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/st0;->c:Landroidx/appcompat/view/menu/hh;

    instance-of v1, v1, Landroidx/appcompat/view/menu/wp0;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/st0;->d:Landroidx/appcompat/view/menu/hh;

    instance-of v1, v1, Landroidx/appcompat/view/menu/wp0;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public v()Landroidx/appcompat/view/menu/st0$b;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/st0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/st0$b;-><init>(Landroidx/appcompat/view/menu/st0;)V

    return-object v0
.end method

.method public w(F)Landroidx/appcompat/view/menu/st0;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/st0;->v()Landroidx/appcompat/view/menu/st0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/st0$b;->o(F)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/st0$b;->m()Landroidx/appcompat/view/menu/st0;

    move-result-object p1

    return-object p1
.end method

.method public x(Landroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/st0;->v()Landroidx/appcompat/view/menu/st0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/st0$b;->p(Landroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/st0$b;->m()Landroidx/appcompat/view/menu/st0;

    move-result-object p1

    return-object p1
.end method

.method public y(Landroidx/appcompat/view/menu/st0$c;)Landroidx/appcompat/view/menu/st0;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/st0;->v()Landroidx/appcompat/view/menu/st0$b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/st0;->r()Landroidx/appcompat/view/menu/gh;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/appcompat/view/menu/st0$c;->a(Landroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/gh;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st0$b;->B(Landroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/st0;->t()Landroidx/appcompat/view/menu/gh;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/appcompat/view/menu/st0$c;->a(Landroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/gh;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st0$b;->F(Landroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/st0;->j()Landroidx/appcompat/view/menu/gh;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/appcompat/view/menu/st0$c;->a(Landroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/gh;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st0$b;->t(Landroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/st0;->l()Landroidx/appcompat/view/menu/gh;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/appcompat/view/menu/st0$c;->a(Landroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/gh;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/st0$b;->x(Landroidx/appcompat/view/menu/gh;)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/st0$b;->m()Landroidx/appcompat/view/menu/st0;

    move-result-object p1

    return-object p1
.end method
