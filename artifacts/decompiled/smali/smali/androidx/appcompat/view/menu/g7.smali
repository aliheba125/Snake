.class public final enum Landroidx/appcompat/view/menu/g7;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum m:Landroidx/appcompat/view/menu/g7;

.field public static final enum n:Landroidx/appcompat/view/menu/g7;

.field public static final synthetic o:[Landroidx/appcompat/view/menu/g7;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/g7;

    const-string v1, "ENABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/g7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/g7;->m:Landroidx/appcompat/view/menu/g7;

    new-instance v0, Landroidx/appcompat/view/menu/g7;

    const-string v1, "DISABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/g7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/g7;->n:Landroidx/appcompat/view/menu/g7;

    invoke-static {}, Landroidx/appcompat/view/menu/g7;->c()[Landroidx/appcompat/view/menu/g7;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/g7;->o:[Landroidx/appcompat/view/menu/g7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[Landroidx/appcompat/view/menu/g7;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/g7;->m:Landroidx/appcompat/view/menu/g7;

    sget-object v1, Landroidx/appcompat/view/menu/g7;->n:Landroidx/appcompat/view/menu/g7;

    filled-new-array {v0, v1}, [Landroidx/appcompat/view/menu/g7;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/g7;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/g7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/g7;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/g7;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/g7;->o:[Landroidx/appcompat/view/menu/g7;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/g7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/g7;

    return-object v0
.end method
