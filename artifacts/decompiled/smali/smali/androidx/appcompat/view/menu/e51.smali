.class public final enum Landroidx/appcompat/view/menu/e51;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum m:Landroidx/appcompat/view/menu/e51;

.field public static final enum n:Landroidx/appcompat/view/menu/e51;

.field public static final enum o:Landroidx/appcompat/view/menu/e51;

.field public static final synthetic p:[Landroidx/appcompat/view/menu/e51;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/e51;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/e51;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/e51;->m:Landroidx/appcompat/view/menu/e51;

    new-instance v0, Landroidx/appcompat/view/menu/e51;

    const-string v1, "LOG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/e51;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/e51;->n:Landroidx/appcompat/view/menu/e51;

    new-instance v0, Landroidx/appcompat/view/menu/e51;

    const-string v1, "QUIET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/e51;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/e51;->o:Landroidx/appcompat/view/menu/e51;

    invoke-static {}, Landroidx/appcompat/view/menu/e51;->c()[Landroidx/appcompat/view/menu/e51;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/e51;->p:[Landroidx/appcompat/view/menu/e51;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic c()[Landroidx/appcompat/view/menu/e51;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/e51;->m:Landroidx/appcompat/view/menu/e51;

    sget-object v1, Landroidx/appcompat/view/menu/e51;->n:Landroidx/appcompat/view/menu/e51;

    sget-object v2, Landroidx/appcompat/view/menu/e51;->o:Landroidx/appcompat/view/menu/e51;

    filled-new-array {v0, v1, v2}, [Landroidx/appcompat/view/menu/e51;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/e51;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/e51;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/e51;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/e51;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/e51;->p:[Landroidx/appcompat/view/menu/e51;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/e51;

    return-object v0
.end method
