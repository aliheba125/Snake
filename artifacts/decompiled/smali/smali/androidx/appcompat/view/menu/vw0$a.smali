.class public final Landroidx/appcompat/view/menu/vw0$a;
.super Landroidx/appcompat/view/menu/zg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/vw0;->b(Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;

.field public s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Landroidx/appcompat/view/menu/vw0;

.field public w:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/vw0;Landroidx/appcompat/view/menu/xg;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/vw0$a;->v:Landroidx/appcompat/view/menu/vw0;

    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/zg;-><init>(Landroidx/appcompat/view/menu/xg;)V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/vw0$a;->u:Ljava/lang/Object;

    iget p1, p0, Landroidx/appcompat/view/menu/vw0$a;->w:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/vw0$a;->w:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/vw0$a;->v:Landroidx/appcompat/view/menu/vw0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/view/menu/vw0;->b(Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
