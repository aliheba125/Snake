.class public final enum Landroidx/lifecycle/f$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum m:Landroidx/lifecycle/f$b;

.field public static final enum n:Landroidx/lifecycle/f$b;

.field public static final enum o:Landroidx/lifecycle/f$b;

.field public static final enum p:Landroidx/lifecycle/f$b;

.field public static final enum q:Landroidx/lifecycle/f$b;

.field public static final synthetic r:[Landroidx/lifecycle/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/f$b;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/f$b;->m:Landroidx/lifecycle/f$b;

    new-instance v0, Landroidx/lifecycle/f$b;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/f$b;->n:Landroidx/lifecycle/f$b;

    new-instance v0, Landroidx/lifecycle/f$b;

    const-string v1, "CREATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/f$b;->o:Landroidx/lifecycle/f$b;

    new-instance v0, Landroidx/lifecycle/f$b;

    const-string v1, "STARTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/f$b;->p:Landroidx/lifecycle/f$b;

    new-instance v0, Landroidx/lifecycle/f$b;

    const-string v1, "RESUMED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/f$b;->q:Landroidx/lifecycle/f$b;

    invoke-static {}, Landroidx/lifecycle/f$b;->c()[Landroidx/lifecycle/f$b;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/f$b;->r:[Landroidx/lifecycle/f$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic c()[Landroidx/lifecycle/f$b;
    .locals 5

    sget-object v0, Landroidx/lifecycle/f$b;->m:Landroidx/lifecycle/f$b;

    sget-object v1, Landroidx/lifecycle/f$b;->n:Landroidx/lifecycle/f$b;

    sget-object v2, Landroidx/lifecycle/f$b;->o:Landroidx/lifecycle/f$b;

    sget-object v3, Landroidx/lifecycle/f$b;->p:Landroidx/lifecycle/f$b;

    sget-object v4, Landroidx/lifecycle/f$b;->q:Landroidx/lifecycle/f$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/lifecycle/f$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/f$b;
    .locals 1

    const-class v0, Landroidx/lifecycle/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/f$b;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/f$b;
    .locals 1

    sget-object v0, Landroidx/lifecycle/f$b;->r:[Landroidx/lifecycle/f$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/f$b;

    return-object v0
.end method


# virtual methods
.method public final e(Landroidx/lifecycle/f$b;)Z
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
