.class public Landroidx/appcompat/view/menu/ut0$a;
.super Landroidx/appcompat/view/menu/ut0$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ut0;->f(Landroid/graphics/Matrix;)Landroidx/appcompat/view/menu/ut0$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroid/graphics/Matrix;

.field public final synthetic e:Landroidx/appcompat/view/menu/ut0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ut0;Ljava/util/List;Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ut0$a;->e:Landroidx/appcompat/view/menu/ut0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ut0$a;->c:Ljava/util/List;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ut0$a;->d:Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ut0$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroidx/appcompat/view/menu/rt0;ILandroid/graphics/Canvas;)V
    .locals 2

    iget-object p1, p0, Landroidx/appcompat/view/menu/ut0$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ut0$g;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ut0$a;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/appcompat/view/menu/ut0$g;->a(Landroid/graphics/Matrix;Landroidx/appcompat/view/menu/rt0;ILandroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
