.class public final Landroidx/appcompat/view/menu/uf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/uf$f;,
        Landroidx/appcompat/view/menu/uf$e;,
        Landroidx/appcompat/view/menu/uf$a;,
        Landroidx/appcompat/view/menu/uf$b;,
        Landroidx/appcompat/view/menu/uf$d;,
        Landroidx/appcompat/view/menu/uf$c;,
        Landroidx/appcompat/view/menu/uf$g;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/uf$f;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/uf$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/uf;->a:Landroidx/appcompat/view/menu/uf$f;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const-string p0, "FLAG_CONVERT_TO_PLAIN_TEXT"

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SOURCE_PROCESS_TEXT"

    return-object p0

    :cond_1
    const-string p0, "SOURCE_AUTOFILL"

    return-object p0

    :cond_2
    const-string p0, "SOURCE_DRAG_AND_DROP"

    return-object p0

    :cond_3
    const-string p0, "SOURCE_INPUT_METHOD"

    return-object p0

    :cond_4
    const-string p0, "SOURCE_CLIPBOARD"

    return-object p0

    :cond_5
    const-string p0, "SOURCE_APP"

    return-object p0
.end method

.method public static g(Landroid/view/ContentInfo;)Landroidx/appcompat/view/menu/uf;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/uf;

    new-instance v1, Landroidx/appcompat/view/menu/uf$e;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/uf$e;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/uf;-><init>(Landroidx/appcompat/view/menu/uf$f;)V

    return-object v0
.end method


# virtual methods
.method public b()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/uf;->a:Landroidx/appcompat/view/menu/uf$f;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/uf$f;->a()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/uf;->a:Landroidx/appcompat/view/menu/uf$f;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/uf$f;->b()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/uf;->a:Landroidx/appcompat/view/menu/uf$f;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/uf$f;->d()I

    move-result v0

    return v0
.end method

.method public f()Landroid/view/ContentInfo;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/uf;->a:Landroidx/appcompat/view/menu/uf$f;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/uf$f;->c()Landroid/view/ContentInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroidx/appcompat/view/menu/tf;->a(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/uf;->a:Landroidx/appcompat/view/menu/uf$f;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
