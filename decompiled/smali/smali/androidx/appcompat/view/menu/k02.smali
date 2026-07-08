.class public final enum Landroidx/appcompat/view/menu/k02;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/k02;

.field public static final enum o:Landroidx/appcompat/view/menu/k02;

.field public static final enum p:Landroidx/appcompat/view/menu/k02;

.field public static final enum q:Landroidx/appcompat/view/menu/k02;

.field public static final synthetic r:[Landroidx/appcompat/view/menu/k02;


# instance fields
.field public final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/appcompat/view/menu/k02;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/appcompat/view/menu/k02;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Landroidx/appcompat/view/menu/k02;->n:Landroidx/appcompat/view/menu/k02;

    new-instance v1, Landroidx/appcompat/view/menu/k02;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroidx/appcompat/view/menu/k02;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Landroidx/appcompat/view/menu/k02;->o:Landroidx/appcompat/view/menu/k02;

    new-instance v3, Landroidx/appcompat/view/menu/k02;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Landroidx/appcompat/view/menu/k02;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Landroidx/appcompat/view/menu/k02;->p:Landroidx/appcompat/view/menu/k02;

    new-instance v4, Landroidx/appcompat/view/menu/k02;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Landroidx/appcompat/view/menu/k02;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Landroidx/appcompat/view/menu/k02;->q:Landroidx/appcompat/view/menu/k02;

    filled-new-array {v0, v1, v3, v4}, [Landroidx/appcompat/view/menu/k02;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/k02;->r:[Landroidx/appcompat/view/menu/k02;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/k02;->m:Z

    return-void
.end method

.method public static values()[Landroidx/appcompat/view/menu/k02;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/k02;->r:[Landroidx/appcompat/view/menu/k02;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/k02;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/k02;

    return-object v0
.end method
