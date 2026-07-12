.class public Landroidx/appcompat/view/menu/ob0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tt0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ob0;-><init>(Landroidx/appcompat/view/menu/ob0$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/ob0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ob0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ob0$a;->a:Landroidx/appcompat/view/menu/ob0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/ut0;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ob0$a;->a:Landroidx/appcompat/view/menu/ob0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ob0;->b(Landroidx/appcompat/view/menu/ob0;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ut0;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ob0$a;->a:Landroidx/appcompat/view/menu/ob0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ob0;->d(Landroidx/appcompat/view/menu/ob0;)[Landroidx/appcompat/view/menu/ut0$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/ut0;->f(Landroid/graphics/Matrix;)Landroidx/appcompat/view/menu/ut0$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/ut0;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ob0$a;->a:Landroidx/appcompat/view/menu/ob0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ob0;->b(Landroidx/appcompat/view/menu/ob0;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ut0;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ob0$a;->a:Landroidx/appcompat/view/menu/ob0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ob0;->c(Landroidx/appcompat/view/menu/ob0;)[Landroidx/appcompat/view/menu/ut0$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/ut0;->f(Landroid/graphics/Matrix;)Landroidx/appcompat/view/menu/ut0$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method
