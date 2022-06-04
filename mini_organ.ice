{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "iCESugar-nano",
    "graph": {
      "blocks": [
        {
          "id": "46ee1b2d-5fe0-4b1e-a6df-0f993b56c52f",
          "type": "basic.input",
          "data": {
            "name": "keys",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "PMOD2",
                "value": "C6"
              },
              {
                "index": "6",
                "name": "PMOD4",
                "value": "E3"
              },
              {
                "index": "5",
                "name": "PMOD6",
                "value": "C2"
              },
              {
                "index": "4",
                "name": "PMOD8",
                "value": "A1"
              },
              {
                "index": "3",
                "name": "PMOD1",
                "value": "B4"
              },
              {
                "index": "2",
                "name": "PMOD3",
                "value": "B5"
              },
              {
                "index": "1",
                "name": "PMOD5",
                "value": "E1"
              },
              {
                "index": "0",
                "name": "PMOD7",
                "value": "B1"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -128,
            "y": -520
          }
        },
        {
          "id": "751b032e-56b9-4ab3-b6d6-713f73151cab",
          "type": "basic.output",
          "data": {
            "name": "spkr",
            "pins": [
              {
                "index": "0",
                "name": "PMODL1",
                "value": "B3"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 512,
            "y": 8
          }
        },
        {
          "id": "ca57f888-def3-4ca7-8fd0-c6963ee18b46",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "261",
            "local": true
          },
          "position": {
            "x": -1120,
            "y": -56
          }
        },
        {
          "id": "31504a2e-70f0-4873-a30d-60e2609b7417",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "293",
            "local": true
          },
          "position": {
            "x": -1024,
            "y": -120
          }
        },
        {
          "id": "df90c8d6-1778-4297-bb67-2c7f30b048ca",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "329",
            "local": true
          },
          "position": {
            "x": -928,
            "y": -184
          }
        },
        {
          "id": "d84d04d6-b4d1-4d6c-ae3d-de99244bbc1d",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "349",
            "local": true
          },
          "position": {
            "x": -832,
            "y": -248
          }
        },
        {
          "id": "261f8ba7-50c5-45de-917d-5faf0b12a4e0",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "391",
            "local": true
          },
          "position": {
            "x": -736,
            "y": -312
          }
        },
        {
          "id": "424dc8fe-4743-4393-8cd5-409442ccf242",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "440",
            "local": true
          },
          "position": {
            "x": -640,
            "y": -376
          }
        },
        {
          "id": "2fe3ecf0-0c5a-4938-b05d-7309721723ef",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "494",
            "local": true
          },
          "position": {
            "x": -544,
            "y": -440
          }
        },
        {
          "id": "c728ad57-3ba3-4a98-987f-fcc79c3778d1",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "522",
            "local": true
          },
          "position": {
            "x": -448,
            "y": -504
          }
        },
        {
          "id": "e7bb1a11-d0cc-4e06-837f-6b441fe82497",
          "type": "basic.code",
          "data": {
            "code": "reg[3:0] theTone;\nreg[3:0] theCount;\n\nalways @ (*) begin\n\n\n  theCount = \n    notes[7]+\n    notes[6]+\n    notes[5]+\n    notes[4]+\n    notes[3]+\n    notes[2]+\n    notes[1]+\n    notes[0];\n    \n\n  theTone = \n         (N7 & notes[7]) + \n         (N6 & notes[6]) +\n         (N5 & notes[5]) + \n         (N4 & notes[4]) + \n         (N3 & notes[3]) + \n         (N2 & notes[2]) + \n         (N1 & notes[1]) +\n         (N0 & notes[0]);\n         \n         \n  end\n  \nassign tone = (theTone*2>theCount);  \n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "notes",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "N7"
                },
                {
                  "name": "N6"
                },
                {
                  "name": "N5"
                },
                {
                  "name": "N4"
                },
                {
                  "name": "N3"
                },
                {
                  "name": "N2"
                },
                {
                  "name": "N1"
                },
                {
                  "name": "N0"
                }
              ],
              "out": [
                {
                  "name": "tone"
                }
              ]
            }
          },
          "position": {
            "x": -224,
            "y": -200
          },
          "size": {
            "width": 720,
            "height": 432
          }
        },
        {
          "id": "caefb8af-3fb9-42a5-89a0-b13b55c38c81",
          "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
          "position": {
            "x": -1120,
            "y": 88
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "417a8338-533c-4ed0-b7e7-fca4bc7906f2",
          "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
          "position": {
            "x": -1024,
            "y": 24
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "d1516560-a538-4a40-b301-e5caee79b770",
          "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
          "position": {
            "x": -928,
            "y": -40
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "8656ebbd-6fda-4090-a0b0-e79d5ce30fab",
          "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
          "position": {
            "x": -832,
            "y": -104
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "671a973e-243c-44d8-871a-abe4164d8d47",
          "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
          "position": {
            "x": -736,
            "y": -176
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "944ea9ab-2712-466c-95af-3b9dd0cab403",
          "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
          "position": {
            "x": -640,
            "y": -240
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "7284f8fe-1b6f-47d6-bd18-d201f4999096",
          "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
          "position": {
            "x": -544,
            "y": -304
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "a14851a9-28d8-46f0-b9e1-e7f7b7cdeb70",
          "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
          "position": {
            "x": -448,
            "y": -368
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "46ee1b2d-5fe0-4b1e-a6df-0f993b56c52f",
            "port": "out"
          },
          "target": {
            "block": "e7bb1a11-d0cc-4e06-837f-6b441fe82497",
            "port": "notes"
          },
          "size": 8
        },
        {
          "source": {
            "block": "d84d04d6-b4d1-4d6c-ae3d-de99244bbc1d",
            "port": "constant-out"
          },
          "target": {
            "block": "8656ebbd-6fda-4090-a0b0-e79d5ce30fab",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "424dc8fe-4743-4393-8cd5-409442ccf242",
            "port": "constant-out"
          },
          "target": {
            "block": "944ea9ab-2712-466c-95af-3b9dd0cab403",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "2fe3ecf0-0c5a-4938-b05d-7309721723ef",
            "port": "constant-out"
          },
          "target": {
            "block": "7284f8fe-1b6f-47d6-bd18-d201f4999096",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "c728ad57-3ba3-4a98-987f-fcc79c3778d1",
            "port": "constant-out"
          },
          "target": {
            "block": "a14851a9-28d8-46f0-b9e1-e7f7b7cdeb70",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "e7bb1a11-d0cc-4e06-837f-6b441fe82497",
            "port": "tone"
          },
          "target": {
            "block": "751b032e-56b9-4ab3-b6d6-713f73151cab",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "261f8ba7-50c5-45de-917d-5faf0b12a4e0",
            "port": "constant-out"
          },
          "target": {
            "block": "671a973e-243c-44d8-871a-abe4164d8d47",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          }
        },
        {
          "source": {
            "block": "df90c8d6-1778-4297-bb67-2c7f30b048ca",
            "port": "constant-out"
          },
          "target": {
            "block": "d1516560-a538-4a40-b301-e5caee79b770",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          }
        },
        {
          "source": {
            "block": "31504a2e-70f0-4873-a30d-60e2609b7417",
            "port": "constant-out"
          },
          "target": {
            "block": "417a8338-533c-4ed0-b7e7-fca4bc7906f2",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          }
        },
        {
          "source": {
            "block": "ca57f888-def3-4ca7-8fd0-c6963ee18b46",
            "port": "constant-out"
          },
          "target": {
            "block": "caefb8af-3fb9-42a5-89a0-b13b55c38c81",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          }
        },
        {
          "source": {
            "block": "a14851a9-28d8-46f0-b9e1-e7f7b7cdeb70",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "e7bb1a11-d0cc-4e06-837f-6b441fe82497",
            "port": "N7"
          },
          "vertices": [
            {
              "x": -328,
              "y": -240
            }
          ]
        },
        {
          "source": {
            "block": "7284f8fe-1b6f-47d6-bd18-d201f4999096",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "e7bb1a11-d0cc-4e06-837f-6b441fe82497",
            "port": "N6"
          },
          "vertices": [
            {
              "x": -392,
              "y": -216
            }
          ]
        },
        {
          "source": {
            "block": "caefb8af-3fb9-42a5-89a0-b13b55c38c81",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "e7bb1a11-d0cc-4e06-837f-6b441fe82497",
            "port": "N0"
          },
          "vertices": [
            {
              "x": -968,
              "y": 184
            }
          ]
        },
        {
          "source": {
            "block": "417a8338-533c-4ed0-b7e7-fca4bc7906f2",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "e7bb1a11-d0cc-4e06-837f-6b441fe82497",
            "port": "N1"
          },
          "vertices": [
            {
              "x": -856,
              "y": 96
            }
          ]
        },
        {
          "source": {
            "block": "d1516560-a538-4a40-b301-e5caee79b770",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "e7bb1a11-d0cc-4e06-837f-6b441fe82497",
            "port": "N2"
          },
          "vertices": [
            {
              "x": -760,
              "y": 88
            }
          ]
        },
        {
          "source": {
            "block": "8656ebbd-6fda-4090-a0b0-e79d5ce30fab",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "e7bb1a11-d0cc-4e06-837f-6b441fe82497",
            "port": "N3"
          },
          "vertices": [
            {
              "x": -696,
              "y": 32
            }
          ]
        },
        {
          "source": {
            "block": "671a973e-243c-44d8-871a-abe4164d8d47",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "e7bb1a11-d0cc-4e06-837f-6b441fe82497",
            "port": "N4"
          },
          "vertices": [
            {
              "x": -592,
              "y": -16
            }
          ]
        },
        {
          "source": {
            "block": "944ea9ab-2712-466c-95af-3b9dd0cab403",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "e7bb1a11-d0cc-4e06-837f-6b441fe82497",
            "port": "N5"
          },
          "vertices": [
            {
              "x": -488,
              "y": -88
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f": {
      "package": {
        "name": "PrescalerN",
        "version": "0.1",
        "description": "Parametric N-bits prescaler",
        "author": "Juan Gonzalez (Obijuan)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true,
                "virtual": false
              },
              "position": {
                "x": -16,
                "y": 376
              }
            },
            {
              "id": "7e07d449-6475-4839-b43e-8aead8be2aac",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 800,
                "y": 376
              }
            },
            {
              "id": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
              "type": "basic.constant",
              "data": {
                "name": "FREQ",
                "value": "440",
                "local": false
              },
              "position": {
                "x": 360,
                "y": 0
              }
            },
            {
              "id": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
              "type": "basic.code",
              "data": {
                "code": "//-- Number of bits of the prescaler\n//parameter N = 22;\n\n//-- divisor register\nreg [31:0] divcounter;\nreg ff;\n\n//localparam mycount=6000000/FREQ; //12MHz\n\n//-- N bit counter\nalways @(posedge clk_in) begin\n  divcounter <= divcounter + FREQ;\n  if (divcounter >= 6000000) begin\n    divcounter <= 0;\n    ff <= ~ff;\n    end\n  end\n\n//-- Use the most significant bit as output\nassign clk_out = ff;\n",
                "params": [
                  {
                    "name": "FREQ"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_out"
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
                "y": 176
              },
              "size": {
                "width": 480,
                "height": 464
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_out"
              },
              "target": {
                "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
                "port": "out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_in"
              }
            },
            {
              "source": {
                "block": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
                "port": "constant-out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "FREQ"
              }
            }
          ]
        }
      }
    }
  }
}