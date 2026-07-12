.class public final Landroidx/appcompat/view/menu/q8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/q8;->a:I

    iput p2, p0, Landroidx/appcompat/view/menu/q8;->b:I

    iput p3, p0, Landroidx/appcompat/view/menu/q8;->c:I

    iput p4, p0, Landroidx/appcompat/view/menu/q8;->d:I

    if-gt p1, p3, :cond_1

    if-gt p2, p4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "top must be less than or equal to bottom, top: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bottom: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Left must be less than or equal to right, left: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", right: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 3

    const-string v0, "rect"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/appcompat/view/menu/q8;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/q8;->d:I

    iget v1, p0, Landroidx/appcompat/view/menu/q8;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/q8;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/q8;->b:I

    return v0
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/q8;->c:I

    iget v1, p0, Landroidx/appcompat/view/menu/q8;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q8;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q8;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Landroidx/appcompat/view/menu/q8;

    invoke-static {v2, v1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type androidx.window.core.Bounds"

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/view/menu/q8;

    iget v1, p0, Landroidx/appcompat/view/menu/q8;->a:I

    iget v3, p1, Landroidx/appcompat/view/menu/q8;->a:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/appcompat/view/menu/q8;->b:I

    iget v3, p1, Landroidx/appcompat/view/menu/q8;->b:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/appcompat/view/menu/q8;->c:I

    iget v3, p1, Landroidx/appcompat/view/menu/q8;->c:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/appcompat/view/menu/q8;->d:I

    iget p1, p1, Landroidx/appcompat/view/menu/q8;->d:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroidx/appcompat/view/menu/q8;->a:I

    iget v2, p0, Landroidx/appcompat/view/menu/q8;->b:I

    iget v3, p0, Landroidx/appcompat/view/menu/q8;->c:I

    iget v4, p0, Landroidx/appcompat/view/menu/q8;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/q8;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/appcompat/view/menu/q8;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/appcompat/view/menu/q8;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/appcompat/view/menu/q8;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/appcompat/view/menu/q8;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " { ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/q8;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/appcompat/view/menu/q8;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/appcompat/view/menu/q8;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/q8;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
