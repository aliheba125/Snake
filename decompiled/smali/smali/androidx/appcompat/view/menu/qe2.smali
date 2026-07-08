.class public final enum Landroidx/appcompat/view/menu/qe2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/qe2;

.field public static final enum o:Landroidx/appcompat/view/menu/qe2;

.field public static final enum p:Landroidx/appcompat/view/menu/qe2;

.field public static final enum q:Landroidx/appcompat/view/menu/qe2;

.field public static final enum r:Landroidx/appcompat/view/menu/qe2;

.field public static final synthetic s:[Landroidx/appcompat/view/menu/qe2;


# instance fields
.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/appcompat/view/menu/qe2;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/qe2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/appcompat/view/menu/qe2;->n:Landroidx/appcompat/view/menu/qe2;

    new-instance v1, Landroidx/appcompat/view/menu/qe2;

    const/4 v2, 0x1

    const/4 v4, 0x6

    const-string v5, "ERROR"

    invoke-direct {v1, v5, v2, v4}, Landroidx/appcompat/view/menu/qe2;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/appcompat/view/menu/qe2;->o:Landroidx/appcompat/view/menu/qe2;

    new-instance v2, Landroidx/appcompat/view/menu/qe2;

    const-string v4, "INFO"

    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-direct {v2, v4, v5, v6}, Landroidx/appcompat/view/menu/qe2;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroidx/appcompat/view/menu/qe2;->p:Landroidx/appcompat/view/menu/qe2;

    new-instance v4, Landroidx/appcompat/view/menu/qe2;

    const-string v7, "VERBOSE"

    invoke-direct {v4, v7, v3, v5}, Landroidx/appcompat/view/menu/qe2;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroidx/appcompat/view/menu/qe2;->q:Landroidx/appcompat/view/menu/qe2;

    new-instance v3, Landroidx/appcompat/view/menu/qe2;

    const-string v5, "WARN"

    const/4 v7, 0x5

    invoke-direct {v3, v5, v6, v7}, Landroidx/appcompat/view/menu/qe2;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/appcompat/view/menu/qe2;->r:Landroidx/appcompat/view/menu/qe2;

    filled-new-array {v0, v1, v2, v4, v3}, [Landroidx/appcompat/view/menu/qe2;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/qe2;->s:[Landroidx/appcompat/view/menu/qe2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/appcompat/view/menu/qe2;->m:I

    return-void
.end method

.method public static c(I)Landroidx/appcompat/view/menu/qe2;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    sget-object p0, Landroidx/appcompat/view/menu/qe2;->p:Landroidx/appcompat/view/menu/qe2;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/appcompat/view/menu/qe2;->o:Landroidx/appcompat/view/menu/qe2;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/appcompat/view/menu/qe2;->r:Landroidx/appcompat/view/menu/qe2;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/appcompat/view/menu/qe2;->n:Landroidx/appcompat/view/menu/qe2;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/appcompat/view/menu/qe2;->q:Landroidx/appcompat/view/menu/qe2;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/qe2;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/qe2;->s:[Landroidx/appcompat/view/menu/qe2;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/qe2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/qe2;

    return-object v0
.end method
