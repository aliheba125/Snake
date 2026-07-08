.class public abstract Landroidx/appcompat/view/menu/i22;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/i22;

.field public static final b:Landroidx/appcompat/view/menu/i22;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/g22;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/g22;-><init>(Landroidx/appcompat/view/menu/m22;)V

    sput-object v0, Landroidx/appcompat/view/menu/i22;->a:Landroidx/appcompat/view/menu/i22;

    new-instance v0, Landroidx/appcompat/view/menu/k22;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/k22;-><init>(Landroidx/appcompat/view/menu/q22;)V

    sput-object v0, Landroidx/appcompat/view/menu/i22;->b:Landroidx/appcompat/view/menu/i22;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/o22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/i22;-><init>()V

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/i22;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/i22;->a:Landroidx/appcompat/view/menu/i22;

    return-object v0
.end method

.method public static c()Landroidx/appcompat/view/menu/i22;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/i22;->b:Landroidx/appcompat/view/menu/i22;

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method

.method public abstract d(Ljava/lang/Object;J)V
.end method
