.class public final Landroidx/appcompat/view/menu/ft1;
.super Landroidx/appcompat/view/menu/cp1;
.source "SourceFile"


# instance fields
.field public final c:Landroidx/appcompat/view/menu/dt1;

.field public d:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/cx1;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/cp1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    new-instance p1, Landroidx/appcompat/view/menu/dt1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    invoke-direct {p1, p0, v0, v1}, Landroidx/appcompat/view/menu/dt1;-><init>(Landroidx/appcompat/view/menu/ft1;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ft1;->c:Landroidx/appcompat/view/menu/dt1;

    return-void
.end method

.method public static B(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "messages"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "rowid"

    const/4 v10, 0x0

    aput-object v4, v3, v10

    const-string v4, "type=?"

    new-array v5, v1, [Ljava/lang/String;

    const-string v1, "3"

    aput-object v1, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "rowid desc"

    const-string v9, "1"

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, -0x1

    return-wide v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p0
.end method

.method private final L()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final C(I)Ljava/util/List;
    .locals 22

    move-object/from16 v1, p0

    const-string v2, "Error reading entries from local database"

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-boolean v0, v1, Landroidx/appcompat/view/menu/ft1;->d:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/ft1;->L()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    const/4 v5, 0x5

    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_13

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/ft1;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v15, :cond_3

    :try_start_1
    iput-boolean v9, v1, Landroidx/appcompat/view/menu/ft1;->d:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_2
    return-object v3

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object v10, v3

    goto/16 :goto_d

    :catch_1
    move-object v3, v15

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object v10, v3

    goto/16 :goto_10

    :cond_3
    :try_start_2
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {v15}, Landroidx/appcompat/view/menu/ft1;->B(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v10
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const-wide/16 v19, -0x1

    cmp-long v0, v10, v19

    if-eqz v0, :cond_4

    :try_start_3
    const-string v0, "rowid<?"

    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v6
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v13, v0

    move-object v14, v12

    goto :goto_1

    :cond_4
    move-object v13, v3

    move-object v14, v13

    :goto_1
    :try_start_4
    const-string v11, "messages"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const-string v10, "rowid"

    aput-object v10, v12, v6

    const-string v10, "type"

    aput-object v10, v12, v9

    const-string v10, "entry"

    const/4 v5, 0x2

    aput-object v10, v12, v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid asc"

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object v10, v15

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v21

    :try_start_5
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_5
    :goto_2
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    if-nez v11, :cond_6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    array-length v13, v12

    invoke-virtual {v11, v12, v6, v13}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v12, Landroidx/appcompat/view/menu/oi1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/view/menu/oi1;
    :try_end_7
    .catch Landroidx/appcompat/view/menu/ir0$a; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    if-eqz v12, :cond_5

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v15, v3

    :goto_3
    move-object v3, v10

    goto/16 :goto_12

    :catch_3
    move-exception v0

    move-object v15, v3

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object v15, v3

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_5
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v12

    const-string v13, "Failed to load event from local database"

    invoke-virtual {v12, v13}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :goto_4
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_6
    if-ne v11, v9, :cond_7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    array-length v13, v12

    invoke-virtual {v11, v12, v6, v13}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v12, Landroidx/appcompat/view/menu/v92;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/view/menu/v92;
    :try_end_b
    .catch Landroidx/appcompat/view/menu/ir0$a; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_c} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c .. :try_end_c} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_6
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v12

    const-string v13, "Failed to load user property from local database"

    invoke-virtual {v12, v13}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_5

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :goto_6
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_7
    if-ne v11, v5, :cond_8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e .. :try_end_e} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e .. :try_end_e} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    array-length v13, v12

    invoke-virtual {v11, v12, v6, v13}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v12, Landroidx/appcompat/view/menu/if1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v12, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/view/menu/if1;
    :try_end_f
    .catch Landroidx/appcompat/view/menu/ir0$a; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_8

    :catch_7
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v12

    const-string v13, "Failed to load conditional user property from local database"

    invoke-virtual {v12, v13}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_5

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :goto_8
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_8
    if-ne v11, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v11

    const-string v12, "Skipping app launch break"

    invoke-virtual {v11, v12}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v11

    const-string v12, "Unknown record type in local database"

    invoke-virtual {v11, v12}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "messages"

    const-string v5, "rowid <= ?"

    new-array v11, v9, [Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-virtual {v3, v0, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v5, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v5}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-object v4

    :catch_8
    move-object v15, v3

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v15, v3

    :goto_9
    const/4 v3, 0x0

    goto/16 :goto_12

    :catch_9
    move-exception v0

    move-object v15, v3

    :goto_a
    const/4 v10, 0x0

    goto :goto_d

    :catch_a
    move-exception v0

    move-object v15, v3

    :goto_b
    const/4 v10, 0x0

    goto :goto_10

    :catchall_6
    move-exception v0

    move-object v3, v15

    goto :goto_9

    :catch_b
    move-exception v0

    move-object v3, v15

    goto :goto_a

    :catch_c
    move-exception v0

    move-object v3, v15

    goto :goto_b

    :catch_d
    :goto_c
    move-object v15, v3

    const/4 v10, 0x0

    goto :goto_f

    :catchall_7
    move-exception v0

    const/4 v3, 0x0

    const/4 v15, 0x0

    goto :goto_12

    :catch_e
    move-exception v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_d
    if-eqz v15, :cond_c

    :try_start_13
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_e

    :catchall_8
    move-exception v0

    goto/16 :goto_3

    :cond_c
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v9, v1, Landroidx/appcompat/view/menu/ft1;->d:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_11

    :catch_f
    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_f
    int-to-long v11, v8

    :try_start_14
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    add-int/lit8 v8, v8, 0x14

    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_11

    :catch_10
    move-exception v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_10
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v9, v1, Landroidx/appcompat/view/menu/ft1;->d:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-eqz v10, :cond_f

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_10
    :goto_11
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x5

    goto/16 :goto_0

    :goto_12
    if-eqz v3, :cond_11

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v15, :cond_12

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_12
    throw v0

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public final D(I[B)Z
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-boolean v0, v1, Landroidx/appcompat/view/menu/ft1;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "type"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v4, p2

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v4, 0x5

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v4, :cond_d

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/ft1;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v9, :cond_2

    :try_start_1
    iput-boolean v8, v1, Landroidx/appcompat/view/menu/ft1;->d:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    return v2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v10, v7

    :goto_1
    move-object v7, v9

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_2
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    invoke-virtual {v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_3

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    move-object v7, v10

    goto/16 :goto_9

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v7, v10

    goto/16 :goto_7

    :cond_3
    const-wide/16 v11, 0x0

    :goto_3
    const-wide/32 v13, 0x186a0

    cmp-long v0, v11, v13

    const-string v13, "messages"

    if-ltz v0, :cond_4

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v14, "Data loss, local db full"

    invoke-virtual {v0, v14}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    const-wide/32 v14, 0x186a1

    sub-long/2addr v14, v11

    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    new-array v11, v8, [Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-virtual {v9, v13, v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v11, v0

    cmp-long v0, v11, v14

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v4, "Different delete count than expected in local db. expected, received, difference"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v4, v2, v8, v11}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v9, v13, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    const/4 v2, 0x1

    return v2

    :catch_4
    move-object v7, v10

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v9, v7

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v10, v7

    :goto_4
    if-eqz v7, :cond_6

    :try_start_5
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v9, v7

    goto :goto_2

    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/ft1;->d:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_8

    :catch_6
    move-object v9, v7

    :catch_7
    :goto_6
    int-to-long v10, v6

    :try_start_6
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v6, v6, 0x14

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v9, v7

    :goto_7
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/view/menu/ft1;->d:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_a
    :goto_8
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_0

    :goto_9
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_c
    throw v0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method public final E(Landroidx/appcompat/view/menu/if1;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    invoke-static {p1}, Landroidx/appcompat/view/menu/x92;->p0(Landroid/os/Parcelable;)[B

    move-result-object p1

    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->I()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/ft1;->D(I[B)Z

    move-result p1

    return p1
.end method

.method public final F(Landroidx/appcompat/view/menu/oi1;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/oi1;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->I()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/view/menu/ft1;->D(I[B)Z

    move-result p1

    return p1
.end method

.method public final G(Landroidx/appcompat/view/menu/v92;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/v92;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->I()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/ft1;->D(I[B)Z

    move-result p1

    return p1
.end method

.method public final H()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ft1;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final I()Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ft1;->D(I[B)Z

    move-result v0

    return v0
.end method

.method public final J()Z
    .locals 11

    const-string v0, "Error deleting app launch break from local database"

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ft1;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ft1;->L()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x5

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ft1;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-nez v6, :cond_3

    iput-boolean v5, p0, Landroidx/appcompat/view/menu/ft1;->d:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_2
    return v2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v7, "messages"

    const-string v8, "type == ?"

    new-array v9, v5, [Ljava/lang/String;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return v5

    :goto_1
    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v5, p0, Landroidx/appcompat/view/menu/ft1;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_3

    :catch_2
    int-to-long v7, v4

    :try_start_3
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v4, 0x14

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_3

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v5, p0, Landroidx/appcompat/view/menu/ft1;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_4
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_6
    throw v0

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return v2
.end method

.method public final K()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ft1;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ft1;->c:Landroidx/appcompat/view/menu/dt1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dt1;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ft1;->d:Z

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic a()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->d()Landroidx/appcompat/view/menu/mf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Landroidx/appcompat/view/menu/ci1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Landroidx/appcompat/view/menu/mt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Landroidx/appcompat/view/menu/jw1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Landroidx/appcompat/view/menu/tu1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroidx/appcompat/view/menu/x92;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->k()V

    return-void
.end method

.method public final bridge synthetic l()Landroidx/appcompat/view/menu/pt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->n()V

    return-void
.end method

.method public final bridge synthetic o()Landroidx/appcompat/view/menu/oh1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->o()Landroidx/appcompat/view/menu/oh1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Landroidx/appcompat/view/menu/zs1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->p()Landroidx/appcompat/view/menu/zs1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Landroidx/appcompat/view/menu/ft1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->q()Landroidx/appcompat/view/menu/ft1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroidx/appcompat/view/menu/d02;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->r()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Landroidx/appcompat/view/menu/r32;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->s()Landroidx/appcompat/view/menu/r32;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Landroidx/appcompat/view/menu/h42;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->t()Landroidx/appcompat/view/menu/h42;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Landroidx/appcompat/view/menu/y62;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->u()Landroidx/appcompat/view/menu/y62;

    move-result-object v0

    return-object v0
.end method
