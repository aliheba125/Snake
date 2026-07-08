.class public Landroidx/appcompat/view/menu/o21;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/o21$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/o21$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/o21$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o21$a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/o21;->a:Landroidx/appcompat/view/menu/o21$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/o21;->a:Landroidx/appcompat/view/menu/o21$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v4, Landroidx/appcompat/view/menu/o21$a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroidx/appcompat/view/menu/o21$a;-><init>(CLjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Landroidx/appcompat/view/menu/o21$a;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/o21$a;->a(C)Landroidx/appcompat/view/menu/o21$a;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/o21$a;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, v0, Landroidx/appcompat/view/menu/o21$a;->c:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/o21;->a:Landroidx/appcompat/view/menu/o21$a;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    new-instance v4, Landroidx/appcompat/view/menu/o21$a;

    invoke-direct {v4, v2, v3}, Landroidx/appcompat/view/menu/o21$a;-><init>(CLjava/lang/String;)V

    iget-object v5, v0, Landroidx/appcompat/view/menu/o21$a;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/o21$a;->a(C)Landroidx/appcompat/view/menu/o21$a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v0, Landroidx/appcompat/view/menu/o21$a;->c:Z

    if-eqz v2, :cond_0

    iget-object p1, v0, Landroidx/appcompat/view/menu/o21$a;->b:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method
