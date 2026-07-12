.class public final enum Landroidx/appcompat/view/menu/x80$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/x80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum m:Landroidx/appcompat/view/menu/x80$b;

.field public static final enum n:Landroidx/appcompat/view/menu/x80$b;

.field public static final enum o:Landroidx/appcompat/view/menu/x80$b;

.field public static final enum p:Landroidx/appcompat/view/menu/x80$b;

.field public static final enum q:Landroidx/appcompat/view/menu/x80$b;

.field public static final synthetic r:[Landroidx/appcompat/view/menu/x80$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/x80$b;

    const-string v1, "DETACHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/x80$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/x80$b;->m:Landroidx/appcompat/view/menu/x80$b;

    new-instance v0, Landroidx/appcompat/view/menu/x80$b;

    const-string v1, "RESUMED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/x80$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/x80$b;->n:Landroidx/appcompat/view/menu/x80$b;

    new-instance v0, Landroidx/appcompat/view/menu/x80$b;

    const-string v1, "INACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/x80$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/x80$b;->o:Landroidx/appcompat/view/menu/x80$b;

    new-instance v0, Landroidx/appcompat/view/menu/x80$b;

    const-string v1, "HIDDEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/x80$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/x80$b;->p:Landroidx/appcompat/view/menu/x80$b;

    new-instance v0, Landroidx/appcompat/view/menu/x80$b;

    const-string v1, "PAUSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/x80$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/x80$b;->q:Landroidx/appcompat/view/menu/x80$b;

    invoke-static {}, Landroidx/appcompat/view/menu/x80$b;->c()[Landroidx/appcompat/view/menu/x80$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/x80$b;->r:[Landroidx/appcompat/view/menu/x80$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[Landroidx/appcompat/view/menu/x80$b;
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/x80$b;->m:Landroidx/appcompat/view/menu/x80$b;

    sget-object v1, Landroidx/appcompat/view/menu/x80$b;->n:Landroidx/appcompat/view/menu/x80$b;

    sget-object v2, Landroidx/appcompat/view/menu/x80$b;->o:Landroidx/appcompat/view/menu/x80$b;

    sget-object v3, Landroidx/appcompat/view/menu/x80$b;->p:Landroidx/appcompat/view/menu/x80$b;

    sget-object v4, Landroidx/appcompat/view/menu/x80$b;->q:Landroidx/appcompat/view/menu/x80$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/appcompat/view/menu/x80$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/x80$b;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/x80$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/x80$b;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/x80$b;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/x80$b;->r:[Landroidx/appcompat/view/menu/x80$b;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/x80$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/x80$b;

    return-object v0
.end method
