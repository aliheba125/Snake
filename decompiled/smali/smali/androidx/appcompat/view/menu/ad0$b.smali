.class public final enum Landroidx/appcompat/view/menu/ad0$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/wk0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ad0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/ad0$b;

.field public static final enum o:Landroidx/appcompat/view/menu/ad0$b;

.field public static final enum p:Landroidx/appcompat/view/menu/ad0$b;

.field public static final synthetic q:[Landroidx/appcompat/view/menu/ad0$b;


# instance fields
.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/appcompat/view/menu/ad0$b;

    const-string v1, "UNKNOWN_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/appcompat/view/menu/ad0$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/appcompat/view/menu/ad0$b;->n:Landroidx/appcompat/view/menu/ad0$b;

    new-instance v1, Landroidx/appcompat/view/menu/ad0$b;

    const-string v2, "MESSAGE_DELIVERED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Landroidx/appcompat/view/menu/ad0$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/appcompat/view/menu/ad0$b;->o:Landroidx/appcompat/view/menu/ad0$b;

    new-instance v2, Landroidx/appcompat/view/menu/ad0$b;

    const-string v3, "MESSAGE_OPEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Landroidx/appcompat/view/menu/ad0$b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroidx/appcompat/view/menu/ad0$b;->p:Landroidx/appcompat/view/menu/ad0$b;

    filled-new-array {v0, v1, v2}, [Landroidx/appcompat/view/menu/ad0$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/ad0$b;->q:[Landroidx/appcompat/view/menu/ad0$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/appcompat/view/menu/ad0$b;->m:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/ad0$b;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/ad0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/ad0$b;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/ad0$b;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ad0$b;->q:[Landroidx/appcompat/view/menu/ad0$b;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/ad0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/ad0$b;

    return-object v0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ad0$b;->m:I

    return v0
.end method
